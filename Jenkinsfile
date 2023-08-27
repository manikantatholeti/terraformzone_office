pipeline {
    agent any
    stages {
        stage ('clone') {
          steps {
            git url: "https://github.com/manikantatholeti/terraformzone_office.git",
            branch: "main"
          }
        }
        
        stage ('Assuming build infra role') {
        steps {
            sh """ cd /var/lib/jenkins/workspace/demo-new/jenkins/
                   aws sts assume-role --role-arn "arn:aws:iam::480459741140:role/terraform-assume-role" --role-session-name "terraform-practice" > assume-role-output.txt
                   export AWS_ACCESS_KEY_ID=`cat assume-role-output.txt | jq -c '.Credentials.AccessKeyId' | tr -d '"' | tr -d ' '`
                   export AWS_SECRET_ACCESS_KEY=`cat assume-role-output.txt | jq -c '.Credentials.SecretAccessKey' | tr -d '"' | tr -d ' '`
                   export AWS_SESSION_TOKEN=`cat assume-role-output.txt | jq -c '.Credentials.SessionToken' | tr -d '"' | tr -d ' '`
                   rm -f assume-role-output.txt
                   aws sts get-caller-identity
                  """
        }
        }
        
      stage ('terraform execution') {
        steps {
            sh """ cd /var/lib/jenkins/workspace/demo-new/jenkins/
                   aws sts get-caller-identity
                   terraform init
                   terraform plan
                   terraform ${action} -auto-approve
                  """
        }
      }
    }
}
