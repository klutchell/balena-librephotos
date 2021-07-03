FROM radicand/librephotos-backend-arm@sha256:dde1ff976055a82ad362ec5a549dfe556b736e49c44986814067bd6d17a19c7f

COPY balena.sh /

RUN chmod +x /balena.sh

CMD [ "/balena.sh" ]

ENV DEVICE_HOSTNAME librephotos
