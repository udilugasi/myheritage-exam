pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run cd /home/udi/.local/bin/ && pwd'
             bat 'ubuntu run pwd'
          }
       }
    }
}
