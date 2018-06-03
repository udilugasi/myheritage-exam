pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'bash ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev'
          }
       }
    }
}
