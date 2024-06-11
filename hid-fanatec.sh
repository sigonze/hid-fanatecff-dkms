#!/bin/bash

DKMS_MODULE="hid-fanatecff"
DKMS_VERSION="0.1.0"

ACTION="$1"
SRC_DIR=$(dirname $0)

usage() {
    echo "Usage: sudo $0 install/uninstall"
    exit
}

dkms_add() {
    set -x 
    cp -R ${SRC_DIR}/src /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    cp ${SRC_DIR}/dkms.conf /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    
    dkms add ${DKMS_MODULE}/${DKMS_VERSION}
    dkms build ${DKMS_MODULE}/${DKMS_VERSION}
    dkms install ${DKMS_MODULE}/${DKMS_VERSION}
    
    cp ${SRC_DIR}/src/fanatec.rules /etc/udev/rules.d/99-fanatec.rules
    udevadm control --reload-rules
    udevadm trigger
    set +x 
}

dkms_remove() {
    set -x 
    dkms uninstall ${DKMS_MODULE}/${DKMS_VERSION}
    dkms remove ${DKMS_MODULE}/${DKMS_VERSION}
    
    rm -rf /usr/src/${DKMS_MODULE}-${DKMS_VERSION}
    rm /etc/udev/rules.d/99-fanatec.rules
    udevadm control --reload-rules
    set +x
}

main() {
    if [ "$EUID" -ne 0 ]; then 
        echo "Please run as superuser"
        usage
    fi
    if [ "$ACTION" = "install" ]; then
        dkms_add
    elif [ "$ACTION" = "remove" ]; then
        dkms_remove
    else
        usage
    fi
}

main
