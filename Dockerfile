FROM joaofidalgo/steamcmd

MAINTAINER João Fidalgo <joao.fidalgo@outlook.com>

RUN mkdir -p /opt/csgo
VOLUME /opt/csgo

WORKDIR /opt/steamcmd

RUN	./steamcmd.sh \
		+login anonymous \
		+force_install_dir /opt/csgo \
		+app_update 740 validate \
		+quit

EXPOSE 27015

WORKDIR /opt/csgo
ENTRYPOINT ["./srcds_run"]