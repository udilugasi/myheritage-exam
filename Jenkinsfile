pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'cd vagrant-nginx-loadbalancing-spring-boot'
             ubuntu ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev
          }
       }
    }
}
