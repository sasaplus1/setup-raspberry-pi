FROM alpine:3.19

RUN apk add --no-cache wpa_supplicant

WORKDIR /root

ENTRYPOINT ["wpa_passphrase"]
