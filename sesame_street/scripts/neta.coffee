# Description
#   ネタコマンド
#
# Commands:
#   あとで、清書
#
# Author:
#   hamuhamu

module.exports = (robot) ->

  robot.respond /hamu$/i, (res) ->
    res.send "お〜い <@hamuhamu>"


  robot.hear /spi (.*)/, (res) ->
    word = res.match[1]
    res.send "jpi #{word}"
