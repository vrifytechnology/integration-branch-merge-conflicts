FROM ubuntu:latest

RUN apt update
RUN apt install -y git

COPY conflicts /conflicts
RUN chmod +x conflicts

ENTRYPOINT ["/conflicts"]
