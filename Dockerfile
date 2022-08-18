FROM alpine:latest

RUN apk add openssh-client \
            ca-certificates \
            bash
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\nHostKeyAlgorithms ssh-rsa\nPubkeyAcceptedKeyTypes ssh-rsa\n\n" > ~/.ssh/config
