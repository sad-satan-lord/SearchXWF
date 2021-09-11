FROM ghcr.io/iamliquidx/mirrorx:latest
WORKDIR /app
RUN chmod 777 /app
RUN git clone https://github.com/Xero1675/MirrorX.git /app
COPY resources/setup.sh .
COPY . .
RUN bash resources/setup.sh
CMD ["bash","resources/MirrorX.sh"]
