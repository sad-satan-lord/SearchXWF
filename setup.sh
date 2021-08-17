update_packages () {
    apt -qq update && apt -qq upgrade -y
}

_run_all () {
    update_packages
    pip3 install –upgrade pip
    pip3 install --no-cache-dir -r requirements.txt
    pip3 install --no-cache-dir -r local-requirements.txt
    pip3 install --no-cache-dir -r addons.txt
}

_run_all
