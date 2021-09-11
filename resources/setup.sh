cp resources/config.env /app
cp resources/token.pickle /app &> /dev/null
pip3 install --no-cache-dir -r requirements.txt
cp extract /usr/local/bin
cp pextract /usr/local/bin
chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
cp netrc /root/.netrc
chmod 600 /usr/src/app/.netrc
