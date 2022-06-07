FROM eclipse-mosquitto:latest

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY passwordfile /mosquitto/passwordfile
EXPOSE 1883