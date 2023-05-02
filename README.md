# fill-fhir-cache

THis provides an action and a Docker image to fill and inflate a local FHIR cache for a FSH project.

## Usage

see [action.yaml](action.yaml)

```yaml
steps:
  - uses: actions/checkout@v3
  - uses: cybernop/fill-fhir-cache@v1
    with:
        project-dir: '.'
  - uses: actions/setup-node@v2
    with:
      node-version: 18
  - run: npm install -g fsh-sushi
    shell: bash
  - run: sushi
    shell: bash
```

### Using the `project-dir` input

This input sets the root directory of the FHIR project. The dependencies from the `sushi-config.yaml` are downloaded and inflated. By default the current directory is used.

## Docker

To fill the cache for a FSH project run:

```bash
docker run --rm \
    -v <sushi project>/sushi-config.yaml:/root/sushi-config.yaml \
    -v <cache dir>:/root/.fhir/ \
    ghcr.io/cybernop/fill-fhir-cache:main
```
Where as `<cache dir>` might be in most cases `${HOME}/.fhir` for *nix OS and `${USERPROFILE}/.fhir` for Windows OS.
