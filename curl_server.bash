#!/usr/bin/env bash
host=${host:-server}

max_retries=${MAX_RETRIES:-100}
retries=$max_retries


while [ $retries -gt 0 ] ;  do
    echo "Response: $(curl -s $host)"
    echo "HTTP Response: $(curl -s -o /dev/null -w "%{http_code}" $host)"
    echo "Remaining retries: ${retries}"
    sleep 1
done
