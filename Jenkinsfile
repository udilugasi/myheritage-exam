pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run /home/udi/.local/bin/ansible-playbook vagrant-nginx-loadbalancing-spring-boot/ansible/playbook.yml --inventory-file vagrant-nginx-loadbalancing-spring-boot/ansible/inventories/dev'
          }
       }
    }
}
