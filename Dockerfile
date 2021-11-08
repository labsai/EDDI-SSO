FROM jboss/keycloak:15.0.2

MAINTAINER labsai

USER root

WORKDIR /opt/jboss/keycloak/themes/

RUN mkdir -p labsai/login/
RUN cp -a keycloak/common labsai
COPY labsai/login/ labsai/login

RUN mkdir -p newbly/login/
RUN cp -a keycloak/common newbly
COPY newbly/login/ newbly/login

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
