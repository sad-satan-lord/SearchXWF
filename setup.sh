update_packages () {
    apt -qq update && apt -qq upgrade -y
}

_run_all () {
    update_packages
    pip3 install –upgrade pip
    pip3 install -r requirements.txt
    pip3 install -r local-requirements.txt
    pip3 install -r addons.txt
}

_run_all
