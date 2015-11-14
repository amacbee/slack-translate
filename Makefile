install:
	$(MAKE) clean
	curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
	git clone git@github.com:openlabs/Microsoft-Translator-Python-API.git
	cd Microsoft-Translator-Python-API; python setup.py install

clean:
	rm -rf Microsoft-Translator-Python-API

help:
	cat Makefile
