pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'cd vagrant-nginx-loadbalancing-spring-boot'
             bat 'ubuntu run cd ~/.local/bin/ && cd'
          }
       }
    }
}
