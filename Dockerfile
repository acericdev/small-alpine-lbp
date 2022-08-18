FROM alpine:latest

RUN apk add openssh-client \
            ca-certificates \
            bash
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config && \
    echo -e "HostKeyAlgorithms ssh-rsa" >> ~/.ssh/config && \
    echo -e "PubkeyAcceptedKeyTypes ssh-rsa" >> ~/.ssh/config
