FROM akkipro27/nvidia_base:latest

MAINTAINER nickp27

WORKDIR /

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install xorg xserver-xorg-video-dummy xserver-xorg-input-void libgtk-3-common --no-install-recommends -y && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY etc /etc

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES all
ENV DISPLAY=:0

CMD ["startx"]

