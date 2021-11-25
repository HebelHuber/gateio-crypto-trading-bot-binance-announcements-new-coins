#!/bin/bash

# write provided env vars into the config files

# rm /bot/auth/auth.yml
mv /bot/auth/auth.example.yml /bot/auth/auth.yml

${AUTH_GATEIO_API+"false"} || yq w -i -- /bot/auth/auth.yml 'gateio_api' "${AUTH_GATEIO_API}"
${AUTH_GATEIO_SECRET+"false"} || yq w -i -- /bot/auth/auth.yml 'gateio_secret' "${AUTH_GATEIO_SECRET}"
${AUTH_TELEGRAM_TOKEN+"false"} || yq w -i -- /bot/auth/auth.yml 'telegram_token' "${AUTH_TELEGRAM_TOKEN}"
${AUTH_TELEGRAM_CHATID+"false"} || yq w -i -- /bot/auth/auth.yml 'telegram_chat_id' "${AUTH_TELEGRAM_CHATID}"

echo "========= Content of auth.yml"
cat /bot/auth/auth.yml
echo "========= END"

# rm /bot/config.yml
mv /bot/config.example.yml /bot/config.yml

${TRADE_OPTIONS_QUANTITY+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.QUANTITY' "${TRADE_OPTIONS_QUANTITY}"
${TRADE_OPTIONS_PAIRING+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.PAIRING' "${TRADE_OPTIONS_PAIRING}"
${TRADE_OPTIONS_TEST+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.TEST' "${TRADE_OPTIONS_TEST}"
${TRADE_OPTIONS_SL+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.SL' "${TRADE_OPTIONS_SL}"
${TRADE_OPTIONS_TP+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.TP' "${TRADE_OPTIONS_TP}"
${TRADE_OPTIONS_ENABLE_TSL+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.ENABLE_TSL' "${TRADE_OPTIONS_ENABLE_TSL}"
${TRADE_OPTIONS_TSL+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.TSL' "${TRADE_OPTIONS_TSL}"
${TRADE_OPTIONS_TTP+"false"} || yq w -i -- /bot/config.yml 'TRADE_OPTIONS.TTP' "${TRADE_OPTIONS_TTP}"
${LOGGING_LOG_LEVEL+"false"} || yq w -i -- /bot/config.yml 'LOGGING.LOG_LEVEL' "${LOGGING_LOG_LEVEL}"
${LOGGING_LOG_FILE+"false"} || yq w -i -- /bot/config.yml 'LOGGING.LOG_FILE' "${LOGGING_LOG_FILE}"
${LOGGING_LOG_TO_CONSOLE+"false"} || yq w -i -- /bot/config.yml 'LOGGING.LOG_TO_CONSOLE' "${LOGGING_LOG_TO_CONSOLE}"
# ${TELEGRAM_ENABLED+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_ENABLED}"
# ${TELEGRAM_NOTIFICATIONS_STARTUP+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_STARTUP}"
# ${TELEGRAM_NOTIFICATIONS_COIN_ANNOUNCEMENT+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_COIN_ANNOUNCEMENT}"
# ${TELEGRAM_NOTIFICATIONS_COIN_NOT_SUPPORTED+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_COIN_NOT_SUPPORTED}"
# ${TELEGRAM_NOTIFICATIONS_BUY_START+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_BUY_START}"
# ${TELEGRAM_NOTIFICATIONS_BUY_ORDER_CREATED+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_BUY_ORDER_CREATED}"
# ${TELEGRAM_NOTIFICATIONS_BUY_FILLED+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_BUY_FILLED}"
# ${TELEGRAM_NOTIFICATIONS_SELL_START+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_SELL_START}"
# ${TELEGRAM_NOTIFICATIONS_SELL_FILLED+"false"} || yq w -i -- /bot/config.yml  "${TELEGRAM_NOTIFICATIONS_SELL_FILLED}"

echo "========= Content of config.yml"
cat /bot/config.yml
echo "========= END"

# python /bot/main.py
# sleep 120