# Lighthouse Client - Docker

This projects builds a customized version of the lighthouse client with Gnosischain modifications. Those include the integrations with different testnets.

- [gnosischain/lighthouse-beacon](https://hub.docker.com/repository/docker/gnosischain/lighthouse-beacon)
- [gnosischain/lighthouse-validator](https://hub.docker.com/repository/docker/gnosischain/lighthouse-validator)

Images are referenced under the following pattern `gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}` 

Pulling the latest lighthouse beacon client on chiado testnet would look like this: 

```
docker pull gnosischain/lighthouse-beacon:latest-chiado
```

## Lighthouse reference

- General: https://lighthouse-book.sigmaprime.io/

# Starting Lighthouse in Chiado testnet

1. Add an `.env` file with your fee recepient and graffiti

```
FEE_RECIPIENT=0x0000000000000000000000000000000000000000
GRAFFITI=gnosischain/lighthouse
```

2. Add your keystores in `./keystores` and their password in a file `./keystores/password.txt` to get this file structure:

Note, keystores MUST follow one of these file names

- `keystore-m_12381_3600_[0-9]+_0_0-[0-9]+.json` The format exported by the `eth2.0-deposit-cli` library ([source](https://github.com/sigp/lighthouse/blob/2983235650811437b44199f9c94e517e948a1e9b/common/account_utils/src/validator_definitions.rs#L402))
- `keystore-[0-9]+.json` The format exported by Prysm ([source](https://github.com/sigp/lighthouse/blob/2983235650811437b44199f9c94e517e948a1e9b/common/account_utils/src/validator_definitions.rs#L411))

```
.
├── docker-compose.yml
├── .env
├── jwtsecret
└── keystores/
    ├── keystore-001.json
    ├── keystore-002.json
    └── password.txt
```

3. Run `./setup.sh` to create a new `./jwtsecret` token + import your validators.

```
./setup.sh
```

4. Start `docker-compose.yml` services from this repository

```
docker-compose up -d
```
