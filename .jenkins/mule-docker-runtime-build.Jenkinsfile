pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Mule Docker Dependencies") {
            steps {
                sh '''
                # docker build -f mule/Dockerfile -t mule-runner mule
                docker build -f mule/Dockerfile.standalone -t mule-runner mule
                '''
            }
        }
    }
}
