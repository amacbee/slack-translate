install:
	curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
	pip install microsofttranslator

setup:
	heroku login
	heroku create slack-translate
	heroku addons:add redistogo:nano
	git remote add heroku https://git.heroku.com/slack-translate.git
	heroku config:set HUBOT_SLACK_TOKEN=***

help:
	cat Makefile

deploy:
	git subtree push --prefix sesame_street/ heroku master

