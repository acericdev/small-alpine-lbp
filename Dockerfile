FROM alpine:latest

RUN apk add openssh-client \
            ca-certificates \
            bash
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "HostKeyAlgorithms ssh-rsa\nPubkeyAcceptedKeyTypes ssh-rsa\nHost *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
