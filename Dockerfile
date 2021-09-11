FROM python:slim
WORKDIR mirrorx
COPY config.env .
COPY compose.yml .
COPY startup.sh .
COPY . .
RUN bash startup.sh
CMD ["MirrorX"]

