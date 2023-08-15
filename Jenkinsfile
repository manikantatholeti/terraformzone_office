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
            sh """/jenkins/terraform init
                  /jenkins/terraform validate
                  /jenkins/terraform apply --auto-approve
                  """
        }
      }
    }
}