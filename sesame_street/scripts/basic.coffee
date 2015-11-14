# Description
#   基本コマンド
#
# Commands:
#   hubot ping - `Let's talk in English`
#
# Author:
#   Ai Makabi

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "Let's talk in English"
