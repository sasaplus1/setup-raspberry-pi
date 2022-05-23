FROM alpine:3.16

RUN apk add --no-cache wpa_supplicant

WORKDIR /root

ENTRYPOINT ["wpa_passphrase"]
