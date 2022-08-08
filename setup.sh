# Create a file `./jwtsecret` with a random 32 bytes hex string

echo -n 0x$(openssl rand -hex 32 | tr -d "\n") > ./jwtsecret

# Import keystores
#
# Note, keystores MUST follow one of these file names:
# - `keystore-m_12381_3600_[0-9]+_0_0-[0-9]+.json` The format exported by the `eth2.0-deposit-cli` library
# - `keystore-[0-9]+.json` The format exported by Prysm

docker run \
  --volume $PWD/keystores:/var/lib/keystores \
  --volume $PWD/validator-data:/var/lib/data \
  sigp/lighthouse \
  lighthouse account validator import \
  --datadir /var/lib/data \
  --directory /var/lib/keystores \
  --password-file /var/lib/keystores/password.txt \
  --reuse-password
