FROM programmingerror/ultroid:b0.1

RUN git clone https://github.com/TeamUltroid/Ultroid.git /root/TeamUltroid/

WORKDIR /root/TeamUltroid/

COPY .env .

COPY . .

RUN bash setup.sh

CMD ["bash", "startup.sh"]
