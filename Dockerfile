FROM alpine:3.14
RUN apk add --no-cache expect openssh
ADD run.sh /

ARG USER
ENV USER=$USER
ARG HOST
ENV HOST=$HOST
ARG PASSWORD
ENV PASSWORD=$PASSWORD

ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="andersol/server-watchdog"
LABEL org.opencontainers.image.authors="i@andersol.cc"
LABEL org.label-schema.description="Example: docker run -it -e USER='admin' -e HOST='192.168.1.1' -e PASSWORD='someDUMMYpassword' andersol/server-watchdog"
LABEL org.label-schema.docker.cmd="docker run -it -e USER='admin' -e HOST='192.168.1.1' -e PASSWORD='someDUMMYpassword' andersol/server-watchdog"

CMD /run.sh ${USER} ${HOST} ${PASSWORD}