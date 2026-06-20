pipeline {
    agent any
    parameters {
        choice(
            name: 'ENV',
            choices: ['DEV','QA','UAT','PROD'],
            description: 'Select environment'
        )

        booleanParam(
            name: 'RUN_TESTS',
            defaultValue: true,
            description: 'Run tests'
        )

        booleanParam(
            name: 'DEPLOY',
            defaultValue: false,
            description: 'Deploy application'
        )
    }
    stages {

        stage('Show Parameters') {
                steps {
                    echo "Environment: ${params.ENV}"
                    echo "Run Tests: ${params.RUN_TESTS}"
                    echo "Deploy: ${params.DEPLOY}"
                }
            }

        stage('Clone') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/JayaguruG/devsecops.git'
            }
        }

        stage('Checkout') {
            steps {
                bat 'echo checkout stage'
            }
        }

        stage('Build') {
             steps {
                 bat 'echo build stage'
                    }
         }

        stage('Run Python script') {
            steps {
                bat 'C:\\Users\\002PGK744\\AppData\\Local\\Programs\\Python\\Python39\\python.exe hello.py'
            }
        }

        stage('Deploy') {
            //Suppose deployment should happen only if checkbox is selected.
                        when {
                            expression { params.DEPLOY }
                        }
            steps {
                script {
                    bat "echo Deploying to ${params.ENV} env"
                    if(params.ENV == 'DEV') {
                        bat 'echo Deploying to DEV'
                    }

                    if(params.ENV == 'PROD') {
                        bat 'echo Deploying to PROD'
                    }

                }
            }
        }

        stage('Docker Test') {
    		steps {
        		bat 'docker ps'
    		}
	}
	stage('Build Docker Image') {
    		steps {
        		bat 'docker build -t flask-demo .'
    			}
	}

        stage('End') {
            steps {
                bat 'echo end stage'
            }
    }
  }
}