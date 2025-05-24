pipeline {
  agent any

  environment {
    TF_VAR_region = 'us-east-1'
  }

  stages {
    stage('Terraform Init') {
      steps {
        dir('terraform') {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Apply') {
      steps {
        dir('terraform') {
          sh 'terraform apply -auto-approve'
        }
      }
    }

    stage('Configure with Ansible') {
      steps {
        dir('ansible') {
          sh 'ansible-playbook -i inventory playbook.yml'
        }
      }
    }
  }

  post {
    always {
      echo 'Pipeline finished'
    }
  }
}