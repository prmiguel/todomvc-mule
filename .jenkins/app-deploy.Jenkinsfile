pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Deploy App") {
            steps {
                sh '''
                pwd
                cat app/compose.yml
                docker compose -f app/compose.yml down -v
                docker compose -f app/compose.yml up -d
                '''
            }
        }
    }
}
