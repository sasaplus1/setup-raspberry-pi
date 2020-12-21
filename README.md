# setup-raspberry-pi

setup scripts for Raspberry Pi

## How to setup

Install and setup Raspberry Pi OS Lite to Raspberry Pi Zero WH:

### Download image

Download Raspberry Pi OS Lite image from official site:

https://www.raspberrypi.org/software/operating-systems/

or other mirror:

http://ftp.jaist.ac.jp/pub/raspberrypi/raspios_lite_armhf/images/

### Extract file

Unzip archive:

```console
$ shasum -c 2020-12-02-raspios-buster-armhf-lite.zip.sha256
2020-12-02-raspios-buster-armhf-lite.zip: OK
$ unzip 2020-12-02-raspios-buster-armhf-lite.zip
Archive:  2020-12-02-raspios-buster-armhf-lite.zip
  inflating: 2020-12-02-raspios-buster-armhf-lite.img
```

### Install OS

Install Raspberry Pi OS Lite to SD card, setup Wifi and enabling SSH:

- [Installing operating system images](https://www.raspberrypi.org/documentation/installation/installing-images/)
- [Copying an operating system image to an SD card using Mac OS](https://www.raspberrypi.org/documentation/installation/installing-images/mac.md)
- [Setting up a Raspberry Pi headless](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)
- [SSH (Secure Shell)](https://www.raspberrypi.org/documentation/remote-access/ssh/README.md)
    - see `3. Enable SSH on a headless Raspberry Pi (add file to SD card on another machine)` section

`wpa_supplicant` and `wpa_passphrase` are useful for create `wpa_supplicant.conf`:

```console
$ ./wpa_supplicant
$ ./wpa_passphrase SSID PASSPHRASE >> ./wpa_supplicant.conf
$ cp ./wpa_supplicant.conf /Volumes/boot
```

Create empty `ssh` file:

```console
$ touch /Volumes/boot/ssh
```

### Access to Raspberry Pi

Find Raspberry Pi's IP address:

```console
$ arp -a | grep -i 'b8:27:eb'
```

Try SSH login:

```console
$ ssh pi@xxx.xxx.xxx.xxx
```

Initial password is `raspberry`.

## License

The MIT license.
