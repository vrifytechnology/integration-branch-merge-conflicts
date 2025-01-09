FROM ubuntu:24.10

RUN apt update
RUN apt install -y git

COPY conflicts /conflicts
RUN chmod +x conflicts

ENTRYPOINT ["/conflicts"]
