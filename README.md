# bun-bug

This repo is a minimal reproducible example of a bug in bun.

The following will reproduce the error using `package.json` scripts:

```bash
# Builds the Docker && runs the image in a container.
bun run start
```

The following will reproduce the error using each individual step:

```bash
docker build -t 4lch4/bun-docker-bug .

docker run --rm 4lch4/bun-docker-bug
```

To confirm it's a problem with the latest version, you can change the first line of the Dockerfile and then run the above commands again:

```diff
- FROM oven/bun:1.0.8
+ FROM oven/bun:1.0.7
```

