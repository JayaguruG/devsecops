pipeline {
    agent any

    stages {
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
            steps {
                bat 'echo deploy stage'
            }
        }

        stage('End') {
            steps {
                bat 'echo end stage'
            }
    }
  }
}