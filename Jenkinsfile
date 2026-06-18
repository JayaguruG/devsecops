pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/JayaguruG/devsecops.git'
            }
        }

        stage('Run Python script') {
            steps {
                bat 'C:\\Users\\002PGK744\\AppData\\Local\\Programs\\Python\\Python39\\python.exe hello.py'
            }
        }
    }
}