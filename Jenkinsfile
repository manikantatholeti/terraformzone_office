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
            sh """terraform -chdir=jenkins init
                  terraform -chdir=jenkins validate
                  terraform -chdir=jenkins apply --auto-approve
                  """
        }
      }
    }
}