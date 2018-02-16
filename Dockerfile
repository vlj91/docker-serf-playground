FROM alpine

ENV SERF_VERSION=0.8.1

RUN apk update && \
    apk add wget unzip && \
    wget -O "serf_${SERF_VERSION}_linux_amd64.zip" "https://releases.hashicorp.com/serf/${SERF_VERSION}/serf_${SERF_VERSION}_linux_amd64.zip" && \
    unzip "serf_${SERF_VERSION}_linux_amd64.zip" && \
    rm -fv "serf_${SERF_VERSION}_linux_amd64.zip" && \
    mv -v ./serf /usr/local/bin/

EXPOSE 7373 7946

CMD /usr/local/bin/serf
