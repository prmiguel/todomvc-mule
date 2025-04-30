pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Mule Docker Dependencies") {
            steps {
                sh '''
                cp /code/mule/mule-ee-distribution-standalone-4.9.3.zip ./mule
                docker build --no-cache -f mule/Dockerfile -t mule-runner mule
                '''
            }
        }
    }
}
