FROM alpine:3.18.0
RUN apk update
RUN apk add --no-cache openvpn=2.6.8-r0 openssl=3.1.5-r0 iptables
ADD ./bin /usr/local/sbin
EXPOSE 1194/udp 443/tcp
CMD run
