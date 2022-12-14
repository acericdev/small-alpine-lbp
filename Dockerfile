FROM alpine

RUN apk add openssh-client \
            ca-certificates \
            bash
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\tHostkeyAlgorithms +ssh-rsa\n\tPubkeyAcceptedAlgorithms +ssh-rsa\n\n" > ~/.ssh/config
