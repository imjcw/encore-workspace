FROM ubuntu:20.04

WORKDIR /root

RUN set -e; \
    sed -i 's!http://security.ubuntu.com!'http://mirrors.aliyun.com'!g' /etc/apt/sources.list; \
    sed -i 's!http://archive.ubuntu.com!'http://mirrors.aliyun.com'!g' /etc/apt/sources.list; \
    apt update; \
    apk install -y curl git; \
    curl -L https://encore.dev/install.sh | bash; \
    export ENCORE_INSTALL="/root/.encore"; \
    export PATH="$ENCORE_INSTALL/bin:$PATH";
