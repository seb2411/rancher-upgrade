#!/bin/sh

# Download the configuration scripts, unpack and remove the temp file
echo ""
echo "-> Downloading Rancher Stack Configurations"
PROJECT_CONFIG_URL=$RANCHER_URL"/stacks/"$RANCHER_STACK_ID"/composeconfig"
curl -sSL -u "$RANCHER_ACCESS_KEY:$RANCHER_SECRET_KEY" $PROJECT_CONFIG_URL -o config.zip
unzip config.zip
rm config.zip

# Do Upgrade
echo ""
echo "-> Updating service on $RANCHER_STACK_NAME"
rancher-compose -p $RANCHER_STACK_NAME up \
    --force-upgrade \
    --confirm-upgrade \
    --pull \
    --batch-size "1" \
    -d
