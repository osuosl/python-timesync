PY?=python

help:
	      @echo 'Makefile for pymesync                                         '
				@echo '                                                              '
				@echo 'Usage:                                                        '
				@echo '   make clean     remove the generated files                  '
				@echo '   make tests     run tests                                   '
				@echo '   make flake     run flake8 on application and tests.py      '
				@echo '   make verify    run tests and flake8                        '
				@echo '                                                              '

clean:
	      rm *.pyc

test:
	      $(PY) tests.py

flake:
	      flake8 pymesync.py tests.py

verify:
				$(PY) tests.py && flake8 pymesync.py tests.py
