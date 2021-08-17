FROM python:3.9

RUN git clone https://github.com/TeamUltroid/Ultroid.git /root/TeamUltroid/

WORKDIR /root/TeamUltroid/

COPY .env .

COPY requirements.txt .

COPY addons.txt .

COPY . .

RUN bash setup.sh

CMD ["bash", "startup.sh"]
