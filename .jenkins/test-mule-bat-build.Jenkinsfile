pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Test Container - BAT") {
            steps {
                sh '''
                docker build -f test/todomvc-api-bat/Dockerfile -t todomvc-api-bat test/todomvc-api-bat
                '''
            }
        }
    }
}