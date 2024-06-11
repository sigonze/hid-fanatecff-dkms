# hid-fanatecff-dkms

dkms for hid-fanatecff for ubuntu

## Usage

Requirements:

```sh
sudo apt install git dkms joystick
```

Installation:

```sh
git clone https://github.com/sigonze/hid-fanatecff-dkms.git
cd hid-fanatecff-dkms
git submodule init
git submodule update
sudo ./hid-fanatec.sh install
```

## TODO

* Install udev rules automatically
* Better version management
