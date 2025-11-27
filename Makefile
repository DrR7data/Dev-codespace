header:
	@echo "For work in the cloud: Aws, Azure and gcloud"

install:
	pip install --upgrade pip &&\
	    pip install -r requirements.txt
install-code:
	pip install --upgrade pip &&\
	    pip install -r requirements-code.txt
install-aws:
	pip install --upgrade pip &&\
	    pip install -r requirements-aws.txt
install-azure:
	pip install --upgrade pip &&\
	    pip install -r requirements-azure.txt

install-gcloud:
	pip install --upgrade pip &&\
            pip install -r requirements-gcloud.txt

format:
	black *.py

lint:
	pylint --disable=R,C main.py

test:
	python -m pytest -vv --cov=main test_main.py

all: install lint test right


right:
	@echo "Hi everybody, All right"

source:
	#ssh-keygen -t rsa
	#python3 -m venv ~/.dev
	#source ~/.dev/bin/activate