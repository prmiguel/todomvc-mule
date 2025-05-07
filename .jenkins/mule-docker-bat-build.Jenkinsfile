pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Test Container - BAT") {
            steps {
                sh '''
                docker build --no-cache -f mule/Dockerfile.bat -t mule-bat mule
                '''
            }
        }
    }
}
