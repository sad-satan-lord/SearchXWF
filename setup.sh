update_packages () {
    apt-get -qq update
}

_run_all () {
    update_packages
    pip3 install –upgrade pip
    pip3 install -r requirements.txt
}

_run_all
