FROM jlesage/baseimage-gui:ubuntu-20.04

# install dependencies
RUN apt-get update
RUN apt-get install -y libgtk2.0-bin libxss1 libnss3 libasound2 libdbus-glib-1-2 fonts-wqy-zenhei locales fswatch
# install thunder
COPY xunlei_1.0.0.1-myubuntu_amd64.deb /tmp/
RUN dpkg -i /tmp/xunlei_1.0.0.1-myubuntu_amd64.deb
# prepare configurations
RUN mkdir -p /home/app
COPY startapp.sh /startapp.sh
VOLUME /home/app/迅雷下载
# config VNC
ENV APP_NAME=迅雷
RUN APP_ICON_URL=file:///usr/share/icons/hicolor/256x256/apps/xunlei.png && \
    install_app_icon.sh "$APP_ICON_URL"


