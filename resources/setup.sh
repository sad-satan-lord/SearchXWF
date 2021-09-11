cp resources/config.env /app
cp resources/token.pickle /app &> /dev/null
pip3 install --no-cache-dir -r requirements.txt
wget -q https://github.com/viswanathbalusu/megasdkrest/releases/download/v0.1.1/megasdkrest-${HOST_CPU_ARCH} -O /usr/local/bin/megasdkrest
chmod a+x /usr/local/bin/megasdkrest
cp bin/extract /usr/local/bin
cp bin/pextract /usr/local/bin
chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
cp netrc /root/netrc
chmod 600 /app/netrc
