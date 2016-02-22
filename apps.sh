#!/usr/bin/env bash   
echo "Installing Apps"
git clone https://github.com/Capitains/flask-capitains-nemo
cd flask-capitains-nemo
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt

