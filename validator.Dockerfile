ARG UPSTREAM_VERSION
FROM sigp/lighthouse:${UPSTREAM_VERSION}

COPY configs/chiado/config.yaml /usr/testnet_data/config.yaml
COPY configs/chiado/genesis.ssz /usr/testnet_data/genesis.ssz
COPY configs/chiado/deploy_block.txt /usr/testnet_data/deploy_block.txt

ENTRYPOINT [ \
  "lighthouse", \ 
  "vc", \
  "--testnet-dir=/usr/testnet_data" \
]