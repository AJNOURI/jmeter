FROM phusion/baseimage:0.9.16

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Tell debconf to run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:webupd8team/java && apt-get update

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections

RUN apt-get install -y --force-yes oracle-java8-installer
RUN apt-get install -y jmeter

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

