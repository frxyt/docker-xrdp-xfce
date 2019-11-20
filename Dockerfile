# Copyright (c) 2019 FEROX YT EIRL, www.ferox.yt <devops@ferox.yt>
# Copyright (c) 2019 Jérémy WALTHER <jeremy.walther@golflima.net>
# See <https://github.com/frxyt/docker-xrdp-xfce> for details.

FROM frxyt/xrdp

LABEL maintainer="Jérémy WALTHER <jeremy@ferox.yt>"

# Install XFCE
RUN     DEBIAN_FRONTEND=noninteractive apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get upgrade -y --fix-missing --no-install-recommends \
            task-xfce-desktop \
    &&  apt-get clean -y && apt-get clean -y && apt-get autoclean -y && rm -r /var/lib/apt/lists/* \
    &&  echo "startxfce4" > /etc/skel/.xsession

COPY Dockerfile LICENSE README.md /frx/xfce/