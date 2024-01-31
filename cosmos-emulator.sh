ipaddr="`ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | head -n 1`"

docker pull mcr.microsoft.com/cosmosdb/linux/azure-cosmos-emulator

docker run \
    --publish 8081:8081 \
    --publish 10250-10255:10250-10255 \
    --name=cosmos-emulator-linux \
    --env AZURE_COSMOS_EMULATOR_PARTITION_COUNT=20 \
    --env AZURE_COSMOS_EMULATOR_ENABLE_DATA_PERSISTENCE=true \
    --env AZURE_COSMOS_EMULATOR_IP_ADDRESS_OVERRIDE=$ipaddr \
    --interactive \
    --tty \
    mcr.microsoft.com/cosmosdb/linux/azure-cosmos-emulator