install:
	curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
	pip install microsofttranslator

help:
	cat Makefile
