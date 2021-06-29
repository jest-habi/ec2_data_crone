#!/bin/bash
date
chmod -R 777 /home/ubuntu/ec2_data_crone/
cd /home/ubuntu/ec2_data_crone/
python3 -m venv .env
source .env/bin/activate
pip3 install -r requirements.txt
printf "Start Test execute python ec2!!! \n"
/home/ubuntu/ec2_data_crone/.env/bin/python3 /home/ubuntu/ec2_data_crone/prueba_ec2/test_1.py
printf "Finish test execute python ec2 %s\n" "$now"
date
