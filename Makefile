install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python3 -m pytest -vv test_hello.py
	#python -m pytest -vv --cov=myrepolib flask-sklearn/tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C hello.py

all: install lint test
