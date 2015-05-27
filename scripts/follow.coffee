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

  do_tweet = ->
    @client.get('search/tweets', { q: 'ハウスマート', count: 10 }, (err, data, response) ->
      data.statuses.forEach (tweet) ->
        robot.adapter.join tweet.user
    )

  cronjob = new cronJob(
    cronTime: "0 0 6,12 * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      do_tweet()
  )

  cronjob.start()
