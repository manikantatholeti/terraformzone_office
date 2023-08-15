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
        stage ('cd') {
            steps {
                sh "cd terraformzone_office"
            }
        }
    
      stage ('terraform execution') {
        steps {
            sh """terraform -chdir=jenkins init
                  terraform -chdir=jenkins validate
                  terraform -chdir=jenkins apply --auto-approve
                  """
        }
      }
    }
}