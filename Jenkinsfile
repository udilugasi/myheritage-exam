pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'cd *vagrant-nginx-loadbalancing-spring-boot'
             bat 'if NOT exist .vagrant vagrant init'
             bat 'vagrant box add ubuntu/trusty64'
             bat 'vagrant up'
          }
       }
    }
}
