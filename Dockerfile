FROM breakdowns/mega-sdk-python:latest

WORKDIR /

RUN if [ "$(uname -m)" = "aarch64" ] ; then \
        export HOST_CPU_ARCH=arm64; \
    elif [ "$(uname -m)" = "x86_64" ]; then \
        export HOST_CPU_ARCH=amd64; \
    fi && \
    sed -i 's/main/main non-free/g' /etc/apt/sources.list && \
    apt-get -qq install -y tzdata curl aria2 p7zip-full p7zip-rar wget xz-utils libmagic-dev gcc && \
    wget -q https://github.com/viswanathbalusu/megasdkrest/releases/download/v0.1.1/megasdkrest-${HOST_CPU_ARCH} -O /usr/local/bin/megasdkrest && \
    chmod a+x /usr/local/bin/megasdkrest
WORKDIR /app
RUN chmod 777 /app
RUN git clone https://github.com/Xero1675/MirrorX.git /app
COPY resources/setup.sh .
COPY . .
RUN bash resources/setup.sh
CMD ["bash","resources/MirrorX.sh"]
