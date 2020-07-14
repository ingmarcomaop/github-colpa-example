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
                        sh '''export PATH=/bin/bash:$PATH
                    	      cat sql-query.sql
                    	      pwd
                              cd 
                              cd /usr/bin
                              pwd
                              ls
                              whoami
                              which mssql-cli
                              
                              
                    	
                              mssql-cli -S laboratorio-tcm.database.windows.net -U administrador -P Laboratorio1 -d TutorialDB -i sql-query.sql -o file-output.txt
                        '''
                	}
            	
        	}
        }

    }
}
