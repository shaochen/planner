FROM debian:stretch
#SHOUTOUT to MAINTAINER Jessie Frazelle <jess@linux.com>
MAINTAINER Shao-Chen Yu <shaochen.yu@gmail.com>

RUN mkdir /planner
RUN apt-get update && apt-get install -y \
  planner\
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "planner" ]
