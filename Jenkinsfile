pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/L0G1C06/simple_api_jenkins', branch: 'dev ')
      }
    }

    stage('Log') {
      steps {
        sh 'ls -la '
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -f Dockerfile . -t l0g1g06/simple_api_jenkins:latest'
      }
    }

    stage('Docker Login') {
      steps {
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerHub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]) {
            sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
        }
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push l0g1g06/simple_api_jenkins:latest'
      }
    }

  }
}