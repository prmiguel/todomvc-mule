pipeline {
    agent any
    // parameters {
    //     string(
    //         name: 'BACKEND_BASE_URL', 
    //         defaultValue: 'https://csharp-todo-backend.azurewebsites.net', 
    //         description: 'The backend base URL:\n\t- https://csharp-todo-backend.azurewebsites.net\n\t- http://192.168.0.110:9081')
    // }
    options {
        timeout(time: 5, unit: 'MINUTES')
    }
    // environment {
    //     BACKEND_BASE_URL = "${params.BACKEND_BASE_URL}"
    // }
    // // -e TEST_api:baseUrl=$BACKEND_BASE_URL \
    stages {
        stage("Build Backend App - Munit Tests") {
            steps {
                sh '''
                docker run -t \
                -v ci_jenkins_home:/jenkins_home \
                -v /home/prmiguel/.m6:/root/.m2 \
                --user root \
                --entrypoint="" \
                -w /jenkins_home/jobs/app/jobs/app-backend-build/workspace/app/backend \
                mule-deps \
                mvn clean test
                '''
            }
        }
    }
    post {
        always {            
            junit skipMarkingBuildUnstable: true, testResults: 'app/backend/target/surefire-reports/TEST-munit.*.xml', allowEmptyResults: true
            publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: './app/backend/target/site/munit/coverage', reportFiles: 'summary.html', reportName: 'Test_Coverage', reportTitles: '', useWrapperFileDirectly: true])
        }
    }
}
