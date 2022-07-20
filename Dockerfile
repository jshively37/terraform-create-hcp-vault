FROM alpine:3.16.1

LABEL maintainer="jeffrey.shively@hashicorp.com"

ARG USERNAME=devuser
RUN useradd --create-home $USERNAME

USER $USERNAME
