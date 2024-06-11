# hid-fanatecff-dkms

dkms for hid-fanatecff for ubuntu

## Usage

Requirements:

```sh
sudo apt install git dkms joystick
git clone https://github.com/gotzl/hid-fanatecff.git
git clone https://github.com/sigonze/hid-fanatecff-dkms.git
```

Installation:

```sh
sudo cp -R hid-fanatecff /usr/src/hid-fanatecff-0.1.0
sudo cp hid-fanatecff-dkms/dkms.conf /usr/src/hid-fanatecff-0.1.0
sudo dkms add hid-fanatecff/0.1.0
sudo dkms build hid-fanatecff/0.1.0
```

## TODO

* Install udev rules automatically
* Better version management
* Add dependency to gotzl/hid-fanatecff.git to avoid double git clone
* Add a script to automate everything?

