# GitHub Actions recommend using debian
FROM debian:buster-slim
MAINTAINER Jason Hambly www.linkedin.com/in/jason-hambly

# Update system packages and install xmlstarlet
RUN apt-get -y update \
  && apt-get -y upgrade \
  && apt-get -y install xmlstarlet

# Load entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

# GitHub Actions need to run as root - no user change

# Entrypoint
ENTRYPOINT ["/entrypoint.sh"]