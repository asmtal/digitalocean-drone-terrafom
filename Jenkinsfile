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
        sh 'apt-get update; apt-get install zip; '
      }
    }
  }
}