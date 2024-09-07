#!/usr/bin/env bash
# Generate certificates for the traefik proxy
# This script uses mkcert to generate the certificates
# To make traefik use the certificates, you need to to configure the `roles/traefik/files/conf/tls.yaml` file
CERTS_PATH="roles/traefik/files/certs"

SITES=(
    "traefik.localhost"
    "grafana.localhost"
    "prometheus.localhost"
    "portainer.localhost"
    "sourcegraph.localhost"
)

# ENsure we are in the root directory
cd "$(dirname "$0")/../${CERTS_PATH}"

# Check if mkcert is installed
if ! command -v mkcert &> /dev/null
then
    echo "mkcert could not be found. Please follow the instructions at https://github.com/FiloSottile/mkcert?tab=readme-ov-file#installation"
    exit 1
fi

for SITE in "${SITES[@]}"
do
    mkcert "${SITE}"
done

