pipeline {
    agent any
    
    options {
    timeout(time: 15, unit: 'MINUTES')
  }
    stages {
        stage("Build Mule Docker Dependencies") {
            steps {
                sh '''
                cp app/backend/pom.xml mule/pom.xml
                docker build -f mule/Dockerfile.deps --no-cache -t mule-deps mule
                '''
            }
        }
    }
}
