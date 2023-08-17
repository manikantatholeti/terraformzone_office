pipeline {
    agent any
    stages {
        stage ('clone') {
          steps {
            git url: "https://github.com/manikantatholeti/terraformzone_office.git",
            branch: "main"
          }
        }
        
      stage ('terraform execution') {
        steps {
            // sh """ cd /var/lib/jenkins/workspace/demo/jenkins/
            //        terraform init
            //       """
        }
      }
    }
}
