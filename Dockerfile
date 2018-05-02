FROM tee3/jenkinsci-slave-boostcpp:0.0.2

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

# set user for modifying image
USER root

RUN dnf -y update && dnf -y install \
    eigen3-devel

# restore user
USER jenkins
