pipeline{
    agent any
    environment{
        Version='1.2'
        SERVER_CRED=credentials("github")
    }
    stages{
        stage ('checkout'){
            steps{
                
                echo "check out stage completed for ${Version} email:${GIT_AUTHOR_EMAIL}"
                echo "${SERVER_CRED}"
                
                
                
            }
        }
        stage('build'){
            steps{
                withCredentials([
                    usernamePassword(credentials:'server-credentials', usernamevariable: USER, passwordVariable: PWD)
                    ]){
                        echo "${USER},${PWD}"
                    }
            }
        }
        
    
    }
}
