pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant destroy --force'
             bat 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant plugin install vagrant-vbguest && vagrant plugin install vagrant-winnfsd && vagrant up'
          }
       }
    }
}
