pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'
             bat 'dir'
             bat 'vagrant --version'
          }
       }
    }
}
