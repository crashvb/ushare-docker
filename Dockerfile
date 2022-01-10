FROM crashvb/supervisord:202201080446@sha256:8fe6a411bea68df4b4c6c611db63c22f32c4a455254fa322f381d72340ea7226
ARG org_opencontainers_image_created=undefined
ARG org_opencontainers_image_revision=undefined
LABEL \
	org.opencontainers.image.authors="Richard Davis <crashvb@gmail.com>" \
	org.opencontainers.image.base.digest="sha256:8fe6a411bea68df4b4c6c611db63c22f32c4a455254fa322f381d72340ea7226" \
	org.opencontainers.image.base.name="crashvb/supervisord:202201080446" \
	org.opencontainers.image.created="${org_opencontainers_image_created}" \
	org.opencontainers.image.description="Image containing ushare." \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.source="https://github.com/crashvb/ushare-docker" \
	org.opencontainers.image.revision="${org_opencontainers_image_revision}" \
	org.opencontainers.image.title="crashvb/ushare" \
	org.opencontainers.image.url="https://github.com/crashvb/ushare-docker"

# Install packages, download files ...
RUN docker-apt ushare

# Configure: ushare
ENV \
	USHARE_ARGS="--no-telnet --no-web" \
	USHARE_DIR=/media \
	USHARE_IFACE=eth0 \
	USHARE_NAME=uShare \
	USHARE_PORT=49200 \
	USHARE_TELNET_PORT=1337

# Configure: supervisor
ADD supervisord.ushare.conf /etc/supervisor/conf.d/ushare.conf

EXPOSE 1337/tcp 1900/udp 49200/tcp

VOLUME ${USHARE_DIR}
