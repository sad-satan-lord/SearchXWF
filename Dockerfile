FROM python:3.9

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN git clone https://github.com/TeamUltroid/Ultroid.git /root/TeamUltroid/

WORKDIR /root/TeamUltroid/

COPY .env .

COPY requirements.txt .

COPY addons.txt .

COPY . .

RUN pip3 install --no-cache-dir -r addons.txt

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "startup.sh"]
