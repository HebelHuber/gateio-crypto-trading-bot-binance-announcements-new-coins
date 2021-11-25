FROM python:3.9-alpine3.13

WORKDIR /bot

# RUN apk update && apk add git yq && \
#     git clone https://github.com/CyberPunkMetalHead/gateio-crypto-trading-bot-binance-announcements-new-coins.git . && \
#     pip3 install -r requirements.txt

RUN apk update && apk add git yq && \
    git clone --branch telegram-notifications https://github.com/HebelHuber/gateio-crypto-trading-bot-binance-announcements-new-coins.git . && \
    pip3 install -r requirements.txt

ADD entrypoint.sh /
ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]

# docker build -t new-coin-bot . && docker run --env-file .env new-coin-bot