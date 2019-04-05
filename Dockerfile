FROM python:latest
COPY ./twisted-network-programming-essentials-examples ./twist
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y"]
RUN ["pip3", "install", "twisted"]
# ENV Key=Value
# EXPOSE PortToExpose
# COPY pathToCopy destInContainer
# VOLUME path