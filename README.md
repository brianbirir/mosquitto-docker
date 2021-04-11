# Mosquitto Broker via Docker

Deployment of Mosquitto broker via Docker. This repo contains the mosquitto config file that can be updated to configure the Docker running instance of Mosquitto.

## Testing

Mosquitto comes with a MQTT client by default i.e. `mosquitto_pub` and `mosquitto_sub` clients. Ensure that the Docker instance of Mosquitto is running.

* First run a subscriber client in one terminal:

```bash
sudo docker exec -it mqtt_broker mosquitto_sub -t building/#

```

* Then publish a message using the `mosquitto_pub` client:

```bash
sudo docker exec -it mqtt_broker mosquitto_pub -m "37 degrees celsius" -t building/room/kitchen/temperature

```

You should see the message `37 degrees celsius` in the terminal session that is running the subscriber client.
