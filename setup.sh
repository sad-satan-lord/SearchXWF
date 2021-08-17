update_and_install_packages () {
    apt -qq update -y
    apt -qq install -y --no-install-recommends \
        git \
        ffmpeg \
        mediainfo \
        unzip \
        wget \
        gifsicle 
}

_run_all () {
    update_and_install_packages
    pip3 install –upgrade pip
    pip3 install -r addons.txt
    pip3 install -r requirements.txt
    pip3 install -r local-requirements.txt
}

_run_all
