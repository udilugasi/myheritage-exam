pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu && ubuntu run ls -l ~'             
          }
       }
    }
}
