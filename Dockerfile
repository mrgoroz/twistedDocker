FROM python
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y"]
RUN ["pip3", "install", "twisted"]
# ENV ADMIN_USER="Golan"
# EXPOSE 80
# COPY pathToCopy destInContainer
# VOLUME /myvol
