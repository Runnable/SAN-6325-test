echo "Registering in consul"
curl --request PUT --data '{ "Name": "memcached", "Address": "memcached", Port": 11211 }}' http://consul:8500/v1/agent/service/register
echo "Starting memcached"
memcached -u
