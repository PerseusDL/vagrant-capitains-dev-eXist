#!/usr/bin/env bash   
sudo service eXist-db start

cd ~/flask-capitains-nemo
source venv/bin/activate
python example.py

cd ~/Nautilus
source venv/bin/activate
python app.py

