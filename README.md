# tari-node-container
Docker container for Minotari node. Current Node version `tari_suite-5.0.0-pre.4-mainnet`

# Volumes
You can map/persist a node’s `config.toml` and block database via volumes.  
Note the volumes section of `docker-compose.yml`.

# Usage
```bash
docker build -t tari-node .
docker compose up
