FROM gameservers/steamcmd
MAINTAINER Jason Rivers <docker@jasonrivers.co.uk>

ENV USE_SRCDS false
ENV APPID=1690800
ENV APPDIR=/home/steamsrv/satisfactory

ENV APP_GAME_NAME satisfactory
ENV APP_SERVER_NAME "Satisfactory Server"
ENV APP_SERVER_CONTACT user@example.com

ENV APP_SERVER_PORT 15777
ENV APP_BEACONPORT 15000
ENV APP_GAMEPORT 7777
ENV BETA

EXPOSE ${APP_SERVER_PORT}/udp
EXPOSE ${APP_GAMEPORT}/udp
EXPOSE ${APP_BEACONPORT}/udp

VOLUME ${APPDIR}
WORKDIR ${APPDIR}

ADD StartServer /scripts/StartServer

USER steamsrv

CMD /scripts/StartServer
