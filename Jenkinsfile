pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant destroy --force'
             echo 'if NOT exist %USERPROFILE%/.vagrant.d/boxes/ubuntu-VAGRANTSLASH-trusty64 vagrant box add ubuntu/trusty64'             
             bat 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant plugin install vagrant-vbguest && vagrant plugin install vagrant-winnfsd && vagrant up'
          }
       }
    }
}
