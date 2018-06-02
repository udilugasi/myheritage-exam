pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             cd 'vagrant-nginx-loadbalancing-spring-boot'
             bat 'vagrant --version'
          }
       }
    }
}
