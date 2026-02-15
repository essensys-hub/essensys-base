# essensys-base

Image Docker de base partagée entre tous les services Essensys pour Raspberry Pi.

## Contenu

- Alpine 3.19
- ca-certificates, curl, wget, jq, bash
- Docker CLI (pour les outils de management)
- Timezone Europe/Paris
- Répertoire /data pré-créé

## Usage

```dockerfile
FROM nrineau/essensys-base:raspberry.2026.02
COPY --from=builder /app/myservice /usr/local/bin/myservice
ENTRYPOINT ["myservice"]
```

## Tags

- `raspberry.YYYY.MM` : tag mensuel
- `latest` : dernière version

## Build

```bash
docker buildx build --platform linux/arm64,linux/amd64 -t nrineau/essensys-base:raspberry.2026.02 --push .
```
