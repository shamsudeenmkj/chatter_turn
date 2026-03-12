FROM instrumentisto/coturn:latest

COPY turnserver.conf /etc/coturn/turnserver.conf

EXPOSE 3478/tcp
EXPOSE 3478/udp
EXPOSE 5349/tcp

CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf"]
