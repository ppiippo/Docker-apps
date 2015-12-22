# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 22.12.2015-10:00

RUN apt-get update -y && apt-get install -qqy python scala \
		spark-core spark-master spark-worker spark-history-server spark-python

WORKDIR /root
ENTRYPOINT ["/bin/bash"]

