#!/usr/bin/env bash
# ======================================================================
# This script generates mkcert certificates and configure Traefik to use them
# ======================================================================


mkcert -install

mkcert *.internal


# restart traeifk

