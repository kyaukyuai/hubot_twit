cronJob = require('cron').CronJob
random  = require('hubot').Response::random
mysql   = require('mysql')

module.exports = (robot) ->

  do_tweet = ->
    db_host = process.env.DB_HOST
    db_user = process.env.DB_USER
    db_pass = process.env.DB_PASS
    db_name = process.env.DB_NAME
    mysql_options =
      host: db_host
      user: db_user
      password: db_pass
      database: db_name
    my_client = mysql.createConnection(mysql_options)
    my_client.connect()

    sql = "select content from promotion_tweets"

    @property = []
    my_client.query(sql, (err, rows, fields) =>
      return if err
      rows.forEach (row) =>
        @property.push row.content
      selected_property = random @property
      tweet = """
        #{selected_property} #housmart
      """
      robot.send {}, tweet 
    )
    my_client.end()

  cronjob = new cronJob(
    cronTime: "0 0,30 * * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      do_tweet()
    )

  cronjob.start
