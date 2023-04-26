# fill-fhir-cache
Provides tooling to fill and inflate a local FHIR cache for a FSH project

## Docker

To fill the cache for a FSH project run:

```bash
docker run --rm \
    -v <sushi project>/sushi-config.yaml:/root/sushi-config.yaml \
    -v <cache dir>:/root/.fhir/ \
    ghcr.io/cybernop/fill-fhir-cache:main
```
Where as `<cache dir>` might be in most cases `${HOME}/.fhir` for *nix OS and `${USERPROFILE}/.fhir` for Windows OS.
