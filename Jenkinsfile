pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/L0G1C06/simple_api_jenkins', branch: 'dev ')
      }
    }

    stage('Log') {
      parallel {
        stage('Log') {
          steps {
            sh 'ls -la '
          }
        }

        stage('Run API') {
          steps {
            sh 'python3 main.py'
          }
        }

      }
    }

  }
}