# hid-fanatecff-dkms

dkms for hid-fanatecff

## Usage

Requirements:
`git`, `dkms` and `evdev-joystick`

For Ubuntu, following packages are needed:
```sh
sudo apt install git dkms joystick
```

Initialization:

```sh
git clone https://github.com/sigonze/hid-fanatecff-dkms.git
cd hid-fanatecff-dkms
git submodule init
git submodule update
```

Install:

```sh
sudo ./hid-fanatecff-dkms.sh install
```

Uninstall:

```sh
sudo ./hid-fanatecff-dkms.sh remove
```


## TODO

* Better version support
* Update management to be clarified
