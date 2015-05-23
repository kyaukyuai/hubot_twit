cronJob = require('cron').CronJob
random  = require('hubot').Response::random
mysql   = require('mysql')
twit    = require('twit')

module.exports = (robot) ->

  keys = {
    consumer_key: process.env.HUBOT_TWITTER_KEY
    consumer_secret: process.env.HUBOT_TWITTER_SECRET
    access_token: process.env.HUBOT_TWITTER_TOKEN
    access_token_secret: process.env.HUBOT_TWITTER_TOKEN_SECRET
  }
  @client = new twit(keys)
  stream  = @client.stream('statuses/filter', { track: '中古マンション', language: 'ja' })
  
  stream.on('tweet', (tweet) ->
    console.log(tweet)
    robot.send(tweet, "\@#{tweet.user.screen_name} #{tweet.user.name}さん、こちら興味あれば御覧ください。\n http://housmart.com/campaigns/show_service?inflow_id=tw #housmart")
  )
