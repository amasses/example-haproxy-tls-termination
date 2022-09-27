FROM haproxy:latest

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY combined.pem /usr/local/etc/haproxy/cert.pem
