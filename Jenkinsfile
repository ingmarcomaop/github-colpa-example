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
                    	sh 'chmod +x execute-sql-files.sh'
                        sh './execute-sql-files.sh'
                }
            }
        }

    }
}

