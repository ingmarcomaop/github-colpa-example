pipeline {
    agent { label 'master' }

    stages {
        stage('build') {
            steps {
                echo "Hello World from Jenkinsfile!"
                
            }
        }

        

        stage ('Executing sql file') {
            steps {
                withEnv(['PATH+EXTRA=/usr/bin']) {
                    dir('sql-files'){
                        sh './execute-sql-files.sh'
                }
            }
        }

    }
}

