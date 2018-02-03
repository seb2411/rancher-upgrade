# Docker image for upgrading a rancher service automatically.

Forked from [monostream/docker-rancher-compose](https://github.com/monostream/docker-rancher-compose)

This image allow you to force the upgrade of a service in Rancher, using rancher-compose.

## Environment variables:

List of environment variables you can use to run the image:

Name                 | Required | Details
-------------------- | -------- | -------------------------------------------------
RANCHER_URL          | Yes      | http(s)://[url]/v2-beta/projects/[environment_id]
RANCHER_STACK_ID     | Yes      | 1st95
RANCHER_ACCESS_KEY   | Yes      | From Environment API Keys
RANCHER_SECRET_KEY   | Yes      | From Environment API Keys
RANCHER_STACK_NAME   | Yes      | -

## Example:

#### Image from Gitlab repository:

```bash
 docker run --rm \
  -e RANCHER_URL=$RANCHER_URL \
  -e RANCHER_STACK_ID=$RANCHER_STACK_ID \
  -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY \
  -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY \
  -e RANCHER_STACK_NAME=$RANCHER_STACK_NAME \
  registry.gitlab.com/seb2411/rancher-upgrade:latest ./upgrade.sh
```

#### Image from Docker Hub repository:

```bash
 docker run --rm \
  -e RANCHER_URL=$RANCHER_URL \
  -e RANCHER_STACK_ID=$RANCHER_STACK_ID \
  -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY \
  -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY \
  -e RANCHER_STACK_NAME=$RANCHER_STACK_NAME \
  seb24/rancher-service-upgrade:latest ./upgrade.sh
```
