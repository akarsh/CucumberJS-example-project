pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/akarsh/Selenium-WebDriver-CucumberJS-example-project.git'
            }
        }
        stage('Build') {
            steps {
                sh '''
                docker build -t example-project-install --target install .
                '''
                sh'''
                docker run -it --rm -v ${PWD}:/usr/src/app/ --name example-project-install example-project-install
                '''
            }
        }
        stage('Run test') {
            steps {
                sh'''
                docker build -t example-project-test --target test .
                '''
                sh'''
                docker run -it --rm -v ${PWD}:/usr/src/app/ --name example-project-test example-project-test
                '''
            }
        }
    }
    post {
      always {
          cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/cucumber-report.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
      }
    }
}
