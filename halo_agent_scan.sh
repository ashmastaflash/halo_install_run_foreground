#!/bin/bash

# configure proxy and agent key
if [ "${PROXY}" != "" ]
then
  export PROXY_OPTION="--proxy=${PROXY}"
else
  export PROXY_OPTION=""
fi

echo "Proxy options: ${PROXY_OPTION}"
/opt/cloudpassage/bin/configure --agent-key=${AGENT_KEY} ${PROXY_OPTION} --grid=https://grid.cloudpassage.com/grid

# start the agent for the first time
/etc/init.d/cphalod start

sleep 10

cat /opt/cloudpassage/log/*

sleep 3600
# cat /opt/cloudpassage/data/cphalo.properties | grep daemon-key | awk -F= '{print $2}'
