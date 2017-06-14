#!/usr/bin/env bash
echo $HOST

max_retries=${MAX_RETRIES:-100}
retries=$max_retries

while [ $retries -gt 0 ] ;  do
    echo "Response: $(curl -s $HOST)"
    echo "HTTP Response: $(curl -s -o /dev/null -w "%{http_code}" $HOST)"
    echo "Remaining retries: ${retries}"
    sleep 1
done
