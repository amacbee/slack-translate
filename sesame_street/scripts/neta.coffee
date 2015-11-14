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


  robot.respond /sesamepi (.*)/, (res) ->
    word = res.match[1]
    res.reply "jpi #{word}"
