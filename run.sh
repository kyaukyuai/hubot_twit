#!/bin/sh

#export HUBOT_TWITTER_KEY="eUSku1utFFyQ83CqOIn9Ocgfa"
#export HUBOT_TWITTER_SECRET="GCheplgXEczgIcMuSkYQURHj5FkTlsjbuAfrCtJTliVeMSkw2g"
#export HUBOT_TWITTER_TOKEN="3221419370-ZDSGZv9bNT01xUQy1AIfNfBP4lJY9uXHzYIoSu2"
#export HUBOT_TWITTER_TOKEN_SECRET="bUjL1GDIZCfAcIk8hoaQ738AYRugoM1VovECiTT9LrQBX"
#
# NEW
export HUBOT_TWITTER_KEY="D0bcn1zKMjfzoQyM7ZGnKA8CT"
export HUBOT_TWITTER_SECRET="soW93Cb8M9ShKFxSzPzOfIi6lKmGUoXK6VCiskb5YPRSLRNvJ0"
export HUBOT_TWITTER_TOKEN="3225242970-e9WgE1A3sToWLjbuKco1H4ZQcZGkj0hVWw3TYnz"
export HUBOT_TWITTER_TOKEN_SECRET="fESdDICw2AnOB3Vf21sIYIF80ufd5jnWDYAx3hX6tGENl"

export HUBOT_NAME="housmart_bot"

export DB_HOST="aa1tnchjgi9mxox.c42qwtg1d1mo.ap-northeast-1.rds.amazonaws.com"
export DB_USER="stgAdminmart"
export DB_PASS="stgHousmile"
export DB_NAME="ebdb"

forever start -c coffee node_modules/.bin/hubot -a twitter-userstream
