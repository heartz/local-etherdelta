# etherdelta-local
# Build using: docker build -t "etherdelta-local:0.0.1" --rm=true --no-cache .
# Run using: docker run -itd --name="etherdelta" -p 9001:9001 etherdelta-local:0.0.1

# NAME             "etherdelta-local
# VERSION          0.0.1
# LAST_UPDATED     2017-12-29 13:30

FROM node:alpine
MAINTAINER Ranadip Saha "ranadipheartz@gmail.com"

RUN apk update && apk upgrade

RUN apk add git bash python

RUN git clone https://github.com/etherdelta/etherdelta.github.io.git \
  && cd etherdelta.github.io \
  && rm index.html \
  && mv index_com.html index.html

EXPOSE 9001

CMD ["/bin/bash"]