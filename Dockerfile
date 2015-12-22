# Version: 0.0.3
# 0.0.3 - WORKDIR to /opt
# 0.0.2 - spark extraxt to /opt added

FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 22.12.2015-12:00

# get spark
RUN apt-get update -qqy && apt-get install -qqy wget
WORKDIR /opt
RUN wget -q http://d3kbcqa49mib13.cloudfront.net/spark-1.1.0.tgz
RUN tar xf spark-1.1.0.tgz && rm -f spark-1.1.0.tgz

#RUN apt-get update -y && apt-get install -qqy python scala spark-core spark-master spark-worker spark-history-server spark-python

#WORKDIR /root
ENTRYPOINT ["/bin/bash"]

