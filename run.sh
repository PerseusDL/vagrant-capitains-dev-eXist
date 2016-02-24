#!/usr/bin/env bash   
#sudo service eXist-db start

cd ~/flask-capitains-nemo
source venv/bin/activate
capitains-nemo --host 0.0.0.0 --port 8100 http://localhost:5000

#cd ~/Nautilus
#source venv/bin/activate
#capitains-nautilus --debug --host 0.0.0.0 --port 5000 tests/test_data/latinLit
