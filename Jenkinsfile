pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run cd /home/udi/.local/bin/ && ubuntu run pwd'
             bat 'ubuntu run pwd'
          }
       }
    }
}
