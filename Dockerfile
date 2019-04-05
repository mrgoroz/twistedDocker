FROM python:latest
# COPY src_in_host dst_in_docker
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y"]
RUN ["pip3", "install", "twisted"]
# ENV Key=Value
# EXPOSE PortToExpose
# COPY pathToCopy destInContainer
# VOLUME path