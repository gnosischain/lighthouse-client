
# Lighthouse Client - Docker

This projects builds a customized version of the lighthouse client with Gnosischain modifications. 


## Image tagging 

Images are referenced under the following pattern. 

```
gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}
```

i.e.

```
docker pull gnosischain/lighthouse-beacon:v2.5.1-chiado 
```


We provide lighthouse as validator and beacon. 

## Dockerhub 

[Beacon image](https://hub.docker.com/repository/docker/gnosischain/lighthouse-beacon)  

[Validator image](https://hub.docker.com/repository/docker/gnosischain/lighthouse-validator)
  


## More information on how the lighthouse client works and can be customized can be found here: 
https://lighthouse-book.sigmaprime.io/advanced.html



# Starting lighthouse in beacon mode
As an example we can run with version v.2.5.1 in testnet chiado as beacon: 


```
docker pull gnosischain/lighthouse-beacon:v2.5.1-chiado  
docker run gnosischain/lighthouse-beacon:v2.5.1-chiado 
```

Customization through flags: 
```
docker run gnosischain/lighthouse-beacon:latest-chiado --http-address 0.0.0.0 --http 
```

# Starting lighthouse in validator mode

As an example we can run with version v.2.5.1 in testnet chiado as validator:

```
docker pull gnosischain/lighthouse-validator:v2.5.1-chiado  
docker run gnosischain/lighthouse-validator:v2.5.1-chiado 

```

Customization through flags: 


```
docker run gnosischain/lighthouse-validator:latest-chiado --http-address 0.0.0.0 --http 

```



