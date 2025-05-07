pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build DB Container Image") {
            steps {
                sh '''
                docker build -f app/db/Dockerfile -t todomvc-db app/db
                '''
            }
        }
        stage("Build Backend Container Image (Skip munit)") {
            steps {
                sh '''
                docker build -f app/backend/Dockerfile --no-cache -t todomvc-mule app/backend
                '''
            }
        }
    }
}
