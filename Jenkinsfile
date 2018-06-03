pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'Ubuntu run cd ~/.local/bin/ && Ubuntu run ls -l'
          }
       }
    }
}
