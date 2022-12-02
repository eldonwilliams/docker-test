## Docker-Test

This is my test project for Docker.
The stack for this app consists of

- redis
- node:16 backend
- react-ts frontend, ran as a node:16 container
- caddy

## How to run

Make sure the following environment variables are set..

``SITE_URL`` | This is the route caddy will listen to for frontend
``API_URL`` | This is the route that will reverse_proxy to backend

In a server setting, it is recommended to firewall off everything except port ``80`` and ``443``, this prevents redis being modified from external sources. ``SITE_URL`` and ``API_URL`` are the only entrances into your infrastructure. For dev environment, docker (and you) can take a more lax to the security measures.

Make sure the following volume is created...

``docker volume create caddy_data``

this is not optional!

Finally, run!

You could, like a loser, run every container manually, but compose is cooler..

``docker-compose up``
or
``docker-compose start``

## How to stop the server

### If you used docker-compose up
control + c
optionally: do ``docker-compose down`` to clean up your environment

### If you used docker-compose start

``docker-compose stop``