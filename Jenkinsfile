pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             sh 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant destroy --force'
             sh 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant plugin install vagrant-vbguest && vagrant plugin install vagrant-winnfsd && vagrant up'
             sh 'cd vagrant-nginx-loadbalancing-spring-boot && ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev'
          }
       }
    }
}
