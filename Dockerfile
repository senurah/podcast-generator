FROM ubuntu:24.04
RUN apt-get update && apt-get install -y python3 python3-pip git ca-certificates
RUN pip3 install pyYAML

COPY feed.py /usr/local/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh /usr/local/bin/feed.py

ENTRYPOINT ["/entrypoint.sh"]