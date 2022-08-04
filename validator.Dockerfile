ARG UPSTREAM_VERSION
FROM sigp/lighthouse:${UPSTREAM_VERSION}

COPY chiado /usr/testnet_data

ENTRYPOINT [ \
  "lighthouse", \ 
  "vc", \
  "--testnet-dir=/usr/testnet_data" \
]