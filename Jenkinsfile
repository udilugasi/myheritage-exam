pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu /usr/bin/which ansible-playbook'             
          }
       }
    }
}
