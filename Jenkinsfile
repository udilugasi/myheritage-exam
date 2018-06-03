pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run cd ~/.local/bin/ && ubuntu run ls -l'
          }
       }
    }
}
