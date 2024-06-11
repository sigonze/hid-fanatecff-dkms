#!/bin/bash

DKMS_MODULE="hid-fanatecff"
DKMS_VERSION="0.1.0"
ACTION="$1"

usage() {
    echo "Usage: $0 install/uninstall"
    exit
}

dkms_add() {
    set -x 
    sudo cp -R src /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    cp dkms.conf /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    dkms add ${DKMS_MODULE}/${DKMS_VERSION}
    dkms build ${DKMS_MODULE}/${DKMS_VERSION}
    dkms install ${DKMS_MODULE}/${DKMS_VERSION}
    set +x 
}

dkms_remove() {
    set -x 
    dkms uninstall ${DKMS_MODULE}/${DKMS_VERSION}
    dkms remove ${DKMS_MODULE}/${DKMS_VERSION}
    rm -rf /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    set +x
}

main() {
    if [ "$EUID" -ne 0 ]; then 
        echo "Please run as superuser"
        exit
    fi
    if [ "$ACTION" = "install" ]; then
        dkms_add
    elif [ "$ACTION" = "uninstall" ]; then
        dkms_remove
    else
        usage
    fi
}

main
