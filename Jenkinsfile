pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run cd /home/udi/.local/bin/'
             bat 'ubuntu run ll'
          }
       }
    }
}
