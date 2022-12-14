FROM irinesistiana/mosdns:latest

COPY ./content /etc/mosdns

RUN sh /etc/mosdns/install_geodata.sh

ENV PORT=8080
ENV DOH_PATH=/dns-query11111

EXPOSE 8080

ENTRYPOINT [ "sh","/etc/mosdns/entrypoint.sh" ]
