FROM joaofidalgo/steamcmd

MAINTAINER João Fidalgo <joao.fidalgo@outlook.com>

RUN mkdir -p /opt/csgo

WORKDIR /opt/csgo

RUN	/opt/steamcmd/steamcmd.sh \
		+login anonymous \
		+force_install_dir . \
		+app_update 740 validate \
		+quit

EXPOSE 27015

ENTRYPOINT ["./srcds_run"]