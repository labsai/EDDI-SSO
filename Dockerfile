FROM jboss/keycloak:15.1.0

MAINTAINER labsai

USER root

WORKDIR /opt/jboss/keycloak/themes/

RUN mkdir -p labsai/login/
COPY labsai/login/ labsai/login

RUN mkdir -p labsai/account/
COPY labsai/account/ labsai/account

RUN mkdir -p newbly/login/
COPY newbly/login/ newbly/login

RUN mkdir -p newbly/account/
COPY newbly/account/ newbly/account

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
