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
        stage("Run Backend Tests") {
            steps {
                sh '''
                docker run -t \
                -v ci_jenkins_home:/jenkins_home \
                --network app_default \
                --user root \
                --entrypoint="" \
                -w /jenkins_home/jobs/test/jobs/test-flow-backend-run/workspace/test/todomvc-api-test \
                mule-deps \
                mvn clean test
                '''
            }
        }
    }
    post {
        always {            
            junit skipMarkingBuildUnstable: true, testResults: 'test/todomvc-api-test/target/surefire-reports/TEST-munit.*.xml', allowEmptyResults: true
        }
    }
}
