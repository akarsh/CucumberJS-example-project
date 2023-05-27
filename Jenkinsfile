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
                docker build -t example-project --target test . 
                '''
            }
        }
        stage('Run test') {
            steps {
                sh'''
                docker run --rm -v ${PWD}:/usr/src/app/ --name cucumber-test example-project 
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
