# Docker Image for using XFCE over XRDP, by [FEROX](https://ferox.yt)

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/frxyt/xrdp-xfce.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/frxyt/xrdp-xfce.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/frxyt/xrdp-xfce.svg)
![GitHub issues](https://img.shields.io/github/issues/frxyt/docker-xrdp-xfce.svg)
![GitHub last commit](https://img.shields.io/github/last-commit/frxyt/docker-xrdp-xfce.svg)

This image packages XFCE with XRDP and VNC.

* Docker Hub: https://hub.docker.com/r/frxyt/xrdp-xfce
* GitHub: https://github.com/frxyt/docker-xrdp-xfce

## Docker Hub Image

**`frxyt/xrdp-xfce`**

## Usage

### Configurable environment variables

These environment variables can be overriden to change the default behavior of the image and adapt it to your needs:

| Name                     | Default value                                       | Example                                                     | Description
| :------------------------| :-------------------------------------------------- | :----------------------------------------------- | :----------
| `FRX_XRDP_CERT_SUBJ`     | `/C=FX/ST=None/L=None/O=None/OU=None/CN=localhost`  | `/C=FR/ST=67/L=SXB/O=FRXYT/OU=IT/CN=xrdp.frx.yt` | XRDP certificate subject
| `FRX_XRDP_USER_NAME`     | `debian`                                            | `john.doe`                                       | Default user name
| `FRX_XRDP_USER_PASSWORD` | `ChangeMe`                                          | `myNOTsecretPassword`                            | Default user password
| `FRX_XRDP_USER_SUDO`     | `1`                                                 | `0`                                              | Add default user to `sudoers` if set to `1`
| `FRX_XRDP_USER_GID`      | `1000`                                              | `33`                                             | Default user ID (UID)
| `FRX_XRDP_USER_UID`      | `1000`                                              | `33`                                             | Default user group ID (GID)
| `TZ`                     | `Europe/Paris`                                      | `Etc/UTC`                                        | Default time zone

### Example

To run this image, you can use this sample `docker-compose.yml` file:

```yaml
php:
  image: frxyt/xrdp-xfce:latest
  environment:
    - FRX_XRDP_USER_NAME=john.doe
    - FRX_XRDP_USER_PASSWORD=myNOTsecretPassword
  ports:
    - "22000:22"
    - "3389:3389"
  volumes:
    - ./home:/home:rw
```

## Build

```sh
docker build -f Dockerfile -t frxyt/xrdp-xfce:latest .
```

## License

This project and images are published under the [MIT License](LICENSE).

```
MIT License

Copyright (c) 2019 FEROX YT EIRL, www.ferox.yt <devops@ferox.yt>
Copyright (c) 2019 Jérémy WALTHER <jeremy.walther@golflima.net>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```