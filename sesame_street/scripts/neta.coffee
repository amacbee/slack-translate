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

  robot.respond /meigen|名言$/i, (res) ->
    # 0 ~ 9の乱数
    rand = Math.floor(Math.random() * 3)

    hash =
      0: "If you can dream it, you can do it. (夢見ることができれば、それは実現できる) by Walt Disney"
      1: "Everything is practice. (すべては練習のなかにある) by Pele"
      2: "Stay hungry. Stay foolish. (ハングリーであれ、愚かであれ) by Steve Jobs"

    res.send hash[rand]

  robot.respond /困ったとき$/i, (res) ->
    res.send "Please speak calmly. (落ち着いて話してください)"
    res.send "I don't know how to say. (なんと言えばいいか分かりません)"
    res.send "Let me think about it. (ちょっと考えさせて下さい)"
