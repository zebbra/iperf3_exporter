FROM alpine:latest
LABEL maintainer="Zebbra <devops@zebbra.ch>"

RUN apk add --no-cache iperf3
COPY iperf3_exporter /bin/iperf3_exporter

ENTRYPOINT ["/bin/iperf3_exporter"]
EXPOSE     9579
