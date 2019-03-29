FROM python:latest
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y"]
RUN ["pip3", "install", "twisted"]
# ENV Key=Value
# EXPOSE PortToExpose
# COPY pathToCopy destInContainer
# VOLUME pathInHost
