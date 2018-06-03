pipeline {
    agent any
    stages {
       stage('execute') {
          steps {
             echo 'not using shell'             
             bat 'ubuntu run /home/udi/.local/bin/ansible-playbook ansible/playbook.yml --inventory-file ansible/inventories/dev'             
          }
       }
    }
}
