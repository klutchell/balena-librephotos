#!/bin/sh

# set a hostname for mDNS (default to librephotos.local)
if [ -n "${DEVICE_HOSTNAME}" ]
then
    curl -X PATCH --header "Content-Type:application/json" \
        --data "{\"network\": {\"hostname\": \"${DEVICE_HOSTNAME}\"}}" \
        "${BALENA_SUPERVISOR_ADDRESS}/v1/device/host-config?apikey=${BALENA_SUPERVISOR_API_KEY}" || true
fi

[ -n "${TIME_ZONE}" ] || export TIME_ZONE="${TZ}"

exec /entrypoint.sh
