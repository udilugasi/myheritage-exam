pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'Ubuntu run ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev'
          }
       }
    }
}
