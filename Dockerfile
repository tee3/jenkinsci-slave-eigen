FROM tee3/jenkinsci-jnlp-slave-boostcpp:0.1.0

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

# set user for modifying image
USER root

RUN apt-get -q -y update && apt-get -q -y install \
    libeigen3-dev \
    && rm -rf /var/lib/apt/lists/*

# restore user
USER jenkins
