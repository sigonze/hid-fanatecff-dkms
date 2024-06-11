# hid-fanatecff-dkms

dkms for hid-fanatecff for ubuntu

## Usage

Requirements:

```sh
sudo apt install git dkms joystick
```

Install:

```sh
git clone https://github.com/sigonze/hid-fanatecff-dkms.git
cd hid-fanatecff-dkms
git submodule init
git submodule update
sudo ./hid-fanatec.sh install
```

Uninstall:

```sh
sudo ./hid-fanatec.sh uninstall
```


## TODO

* Install udev rules automatically
* Better version support
* Update management to be clarified
* Procedure for other distro than Ubuntu (should only affect Requirements)
