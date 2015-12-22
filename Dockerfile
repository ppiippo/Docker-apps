# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 22.12.2015-10:00

# get spark
RUN apt-get update -qqy && apt-get install -qqy wget
RUN wget http://d3kbcqa49mib13.cloudfront.net/spark-1.1.0.tgz
RUN tar xvf spark-1.1.0.tgz

#RUN apt-get update -y && apt-get install -qqy python scala spark-core spark-master spark-worker spark-history-server spark-python

WORKDIR /root
ENTRYPOINT ["/bin/bash"]

