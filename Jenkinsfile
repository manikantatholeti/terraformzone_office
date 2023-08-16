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
            sh """ /var/lib/jenkins/workspace/demo/jenkins/terraform init
                  // terraform validate
                  // terraform plan --auto-approve
                  // terraform apply --auto-approve
                  """
        }
      }
    }
}
