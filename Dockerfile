FROM python:slim
RUN apt-get -qq update && apt-get install git -y
WORKDIR /app
RUN chmod 777 /app
RUN git clone https://github.com/Xero1675/MirrorX.git /app
COPY resources/setup.sh .
COPY . .
RUN bash resources/setup.sh
CMD ["MirrorX"]
