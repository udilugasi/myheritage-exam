# myheritage-exam
Repository for myheritage exam - Udi Lugasi

The repo containes The mandatory Tasks.

Prerequisites for the Jenkins and microservices:
1. Oracle VM VirtualBox installed.
2. Vagrant installed.
3. ansible installed.
4. Jenkins.

To run it manually:
1. git clone https://github.com/udilugasi/myheritage-exam.git
2. cd vagrant-nginx-loadbalancing-spring-boot
3. vagrant up
4. ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev
5. open http://192.168.30.21/ (or open this URL in the browser).
