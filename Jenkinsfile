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
                
                    dir('sql-files'){
                    	sh 'cat sql-query.sql'
                    	sh 'pwd'
                    	sh '#!/bin/bash'
                        sh 'mssql-cli -S laboratorio-tcm.database.windows.net -U administrador -P Laboratorio1 -d TutorialDB -i sql-query.sql -o file-output.txt'
                	}
            	
        	}
        }

    }
}
