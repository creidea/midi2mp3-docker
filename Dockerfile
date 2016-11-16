FROM ubuntu:16.04
MAINTAINER Mike Chernev <mike@mikechernev.com>

RUN apt-get update && apt-get install -y timidity ffmpeg

RUN cd /etc/timidity/ && apt-get install -y fluid-soundfont-gm && echo "source /etc/timidity/fluid-soundfont-gm.cfg" >>timidity.cfg

ADD convert /usr/bin

CMD ["convert"]

