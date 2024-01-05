FROM alpine
RUN set -ex && apk --no-cache add sudo
RUN apk add curl jq gcompat
COPY install_nomad.sh .
RUN /install_nomad.sh
