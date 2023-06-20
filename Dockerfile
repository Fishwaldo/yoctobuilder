FROM ghcr.io/crops/yocto:ubuntu-20.04-base
LABEL maintainer="Justin Hammond <justin@dynam.ac>"

USER root

COPY sudoers.usersetup /etc/
COPY entrypoint.sh /

RUN echo "#include /etc/sudoers.usersetup" >> /etc/sudoers && \
  apt -y install git-lfs joe mc

USER yoctouser

ENTRYPOINT ["/entrypoint.sh"]
