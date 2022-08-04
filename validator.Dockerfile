ARG UPSTREAM_VERSION
ARG BEACON_API_PORT
FROM sigp/lighthouse:${UPSTREAM_VERSION}

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT [ \
    "lighthouse", \ 
    "--debug-level $DEBUG_LEVEL", \ 
    "--network gnosis", \ 
    "validator_node", \
    "--datadir /root/.lighthouse", \
    "--eth1 --eth1-endpoints $HTTP_WEB3PROVIDER", \
    "--http", \
    "--http-allow-origin '*'", \
    "--http-address 0.0.0.0", \
    "--http-port $BEACON_API_PORT", \
    "--port 9000", \
    "--metrics", \
    "--metrics-address 0.0.0.0", \
    "--metrics-port 8008", \
    "--metrics-allow-origin '*'" \
]



# COPY entrypoint.sh entrypoint.sh