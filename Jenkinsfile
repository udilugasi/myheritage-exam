pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run /usr/bin/ which ansible-playbook'             
          }
       }
    }
}
