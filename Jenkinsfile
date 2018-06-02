pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'cd vagrant-nginx-loadbalancing-spring-boot && vagrant destroy 26ac47c && vagrant destroy e35f864'
          }
       }
    }
}
