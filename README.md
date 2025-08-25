# tari-node-container
Docker container for Minotari node. Current Node version `tari_suite-5.0.0-pre.4-mainnet`

# Volumes
You can map/persist a nodes config.toml, and block database via volumes. Note volumes section of `docker-compose.yml`


# Usage # 
```
docker build -t tari-node . 
docker compose up  
```
