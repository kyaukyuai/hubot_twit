#!/bin/sh

export HUBOT_TWITTER_KEY="eUSku1utFFyQ83CqOIn9Ocgfa"
export HUBOT_TWITTER_SECRET="GCheplgXEczgIcMuSkYQURHj5FkTlsjbuAfrCtJTliVeMSkw2g"
export HUBOT_TWITTER_TOKEN="3221419370-ZDSGZv9bNT01xUQy1AIfNfBP4lJY9uXHzYIoSu2"
export HUBOT_TWITTER_TOKEN_SECRET="bUjL1GDIZCfAcIk8hoaQ738AYRugoM1VovECiTT9LrQBX"
export HUBOT_NAME="housmart_bot"

export DB_HOST="aa1tnchjgi9mxox.c42qwtg1d1mo.ap-northeast-1.rds.amazonaws.com"
export DB_USER="stgAdminmart"
export DB_PASS="stgHousmile"
export DB_NAME="twitter"

forever start -c coffee node_modules/.bin/hubot -a twitter-userstream
