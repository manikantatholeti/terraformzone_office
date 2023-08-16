pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('acsesskey')
        AWS_SECRET_ACCESS_KEY = credentials('secretkey')
    }
    stages {
        stage ('clone') {
          steps {
            git url: "https://github.com/manikantatholeti/terraformzone_office.git",
            branch: "main"
          }
        }
        
      stage ('terraform execution') {
        steps {
            sh """terraform init
                  terraform validate
                  terraform plan --auto-approve
                  terraform apply --auto-approve
                  """
        }
      }
    }
}
