# Example HAProxy config
## For TLS termination

TO run:

1. Edit haproxy.cfg to change the backend server from `upstream-server.com` to wherever you need the traffic to be forwarded to.

2. Run the following commands:

```
docker build -t proxy .
docker run --rm -it -p 8443:8443 proxy
```

3. Test: 

```
curl https://127.0.0.1:8443/whatever -k
```

Note: The TLS certificate provided is self-signed, so you will need to skip validation, or add the certificate to your system trust store. Alternatively you can provide your own certificate if you wish.

The format of the combined.pem file should be:

```
-----BEGIN PRIVATE KEY-----
... key data
-----END PRIVATE KEY-----
-----BEGIN CERTIFICATE-----
... cert data
-----END CERTIFICATE-----
```
