pipeline {
  agent {
    docker {
      image 'ubuntu:16.04'
    }

  }
  stages {
    stage('Install packages') {
      steps {
        echo 'Checking format'
        sh 'apt-get update; apt-get --yes --assume-yes install zip wget; '
      }
    }
    stage('Install Terraform') {
      steps {
        sh '''wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip; unzip terraform_0.11.7_linux_amd64.zip; mv terraform /usr/local/bin/; 

terraform --version; terraform init; '''
      }
    }
    stage('Validate Terraform') {
      steps {
        sh 'terraform validate'
      }
    }
  }
}