#!/usr/bin/env bash
host=${host:-server}

max_retries=${MAX_RETRIES:-100}
retries=$max_retries


while [ $retries -gt 0 ] ;  do
    echo "Make request..."
    curl -s -o /dev/null -w "%{http_code}" $host
    readiness=$?
    echo "DB Readiness: $readiness"
    echo "remaining retries: ${retries}"
    sleep 1
done
