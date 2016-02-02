#!/bin/bash

function deploy_challenge {
    local DOMAIN="${1}" TOKEN_FILENAME="${2}" TOKEN_VALUE="${3}"
    echo $DOMAIN $TOKEN_FILENAME $TOKEN_VALUE
    ./cloudxns.sh ./cloudxns.conf $DOMAIN $TOKEN_VALUE
}

function clean_challenge {
    local DOMAIN="${1}" TOKEN_FILENAME="${2}" TOKEN_VALUE="${3}"
}

function deploy_cert {
    local DOMAIN="${1}" KEYFILE="${2}" CERTFILE="${3}" CHAINFILE="${4}"
}

HANDLER=$1; shift; $HANDLER $@
