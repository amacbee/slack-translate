# Description
#   Elmo! Elmo!!!
#
# Commands:
#   TBD
#
# Author:
#   amacbeee

{SlackBotListener} = require 'hubot-slack'

module.exports = (robot) ->

  regex = /気がのらないパカ$/
  callback = (res) -> res.send "Why?"
  robot.hear regex, callback
  robot.listeners.push(new SlackBotListener(robot, regex, callback))

  regex = /フェ〜$/
  callback = (res) -> res.send "Let's talk in English"
  robot.listeners.push(new SlackBotListener(robot, regex, callback))
