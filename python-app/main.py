import consul
import os
from pymemcache.client.base import Client
from time import sleep

c = consul.Consul(host=os.environ['CONSUL_HOST'])

services = c.agent.services()

memcached_service = services["memcached"]
memcached_conn = (memcached_service["Address"], memcached_service["Port"])

print("Conn", memcached_conn)
client = Client(memcached_conn)
client.set('some_key', 'some_value')
result = client.get('some_key')

print("Result", result)
