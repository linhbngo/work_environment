# Work Environments

This repository contains various Dockefile builds to setup different working environments. These includes:
- Programming
- LaTEX writing
- R

```
docker-compose build
```

## Instructions:

```bash
docker compose up -d <service name>
docker compose down --rmi all
docker compose down --rmi local
docker compose build
docker compose push
```
