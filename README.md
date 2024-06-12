# hid-fanatecff-dkms

dkms for hid-fanatecff

## Usage

Requirements:
To use the current script, these commands have to be installed: `git`, `dkms` and `evdev-joystick`


For Ubuntu, they can be installed this way:

```sh
sudo apt install git dkms joystick
```

Initialization:

```sh
git clone --recurse-submodules https://github.com/sigonze/hid-fanatecff-dkms.git
```

Install:

```sh
cd hid-fanatecff-dkms
sudo ./hid-fanatecff-dkms.sh install
```

Uninstall:

```sh
cd hid-fanatecff-dkms
sudo ./hid-fanatecff-dkms.sh remove
```

Update:

```sh
cd hid-fanatecff-dkms
sudo ./hid-fanatecff-dkms.sh remove
git pull --recurse-submodules
sudo ./hid-fanatecff-dkms.sh install
```

## TODO

* Better version support
* Update procedure to be simplified?
