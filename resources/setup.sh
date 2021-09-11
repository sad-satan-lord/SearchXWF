cp resources/config.env /app
cp resources/token.pickle /app &> /dev/null
if [ "$(uname -m)" = "aarch64" ] ; then \
        export HOST_CPU_ARCH=arm64; \
    elif [ "$(uname -m)" = "x86_64" ]; then \
        export HOST_CPU_ARCH=amd64
pip3 install --no-cache-dir MirrorX
apt-get -qq install -y tzdata curl aria2 p7zip-full p7zip-rar wget xz-utils libmagic-dev gcc
wget -q https://github.com/viswanathbalusu/megasdkrest/releases/download/v0.1.1/megasdkrest-${HOST_CPU_ARCH} -O /usr/local/bin/megasdkrest
chmod a+x /usr/local/bin/megasdkrest
cp bin/extract /usr/local/bin
cp bin/pextract /usr/local/bin
chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
cp netrc /root/netrc
chmod 600 /app/netrc
