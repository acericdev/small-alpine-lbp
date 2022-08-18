FROM alpine:3.12.4

RUN apk add openssh-client \
            ca-certificates \
            bash
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
