FROM alpine:3.18

RUN apk add --no-cache wpa_supplicant

WORKDIR /root

ENTRYPOINT ["wpa_passphrase"]
