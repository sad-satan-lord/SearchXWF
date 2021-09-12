cp resources/config.env /app
cp resources/token.pickle /app &> /dev/null
cp bin/extract /usr/local/bin
cp bin/pextract /usr/local/bin
chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
cp netrc /root/.netrc
