FROM crashvb/supervisord:202007030404
LABEL maintainer="Richard Davis <crashvb@gmail.com>"

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
