# Starting the container in beacon mode

```
Dockerhub: 
https://hub.docker.com/repository/docker/gnosischain/lighthouse-beacon


To run: 

docker run gnosischain/prysm-beacon:{upstream_version}-{testnet}

i.e. 

docker run gnosischain/lighthouse-beacon:latest-chiado

```

# Starting the container in validator mode

```

Dockerhub: 
https://hub.docker.com/repository/docker/gnosischain/lighthouse-validator

To run: 

docker run gnosischain/lighthouse-{client_type}:{upstream_version}-{testnet}
i.e.
docker run gnosischain/lighthouse-validator:latest-chiado

```
