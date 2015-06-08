FROM joaofidalgo/steamcmd

MAINTAINER João Fidalgo <joao.fidalgo@outlook.com>

RUN mkdir -p /opt/csgo

VOLUME /opt/csgo

RUN /opt/steamcmd/steamcmd.sh \
 +login anonymous \
 +force_install_dir /opt/csgo \
 +app_update 740 validate \
 +quit

EXPOSE 27015

ENTRYPOINT ["/opt/csgo/srcds_run"]
