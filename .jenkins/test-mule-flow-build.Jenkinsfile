pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Test Container - Flow") {
            steps {
                sh '''
                docker build -f test/todomvc-api-test/Dockerfile -t todomvc-api-bat test/todomvc-api-test
                '''
            }
        }
    }
}