#/bin/bash
sudo apt update 
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
sudo apt install nginx -y
sudo apt install python-apt -y
sudo apt install git -y
sudo apt install stress -y
sudo git clone https://github.com/saikiranpi/autoscaling_testing.git /myrepo
sleep 10
ansible-playbook /myrepo/playbook.yaml

# by the above commands we can create AMI and thta can be used in launch templete