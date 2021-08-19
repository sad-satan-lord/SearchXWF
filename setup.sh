update_packages () {
    apt-get -qq update
}

_run_all () {
    update_packages
    pip3 install –upgrade pip
    pip3 install --no-cache-dir -r requirements.txt
    pip3 install --no-cache-dir -r resources/extras/local-requirements.txt
    wget -O addons.txt https://git.io/JWdOk
    pip3 install --no-cache-dir -r /deploy/addons.txt
}

_run_all
