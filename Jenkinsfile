pipeline{
    agent any
    environment{
        Version='1.2'
        SERVER_CRED=credentials("github")
    }
    stages{
        stage ('checkout'){
            steps{
                
                echo "check out stage completed for ${Version}"
                echo '$SERVER_CRED'
                
                
                
            }
        }

    
    }
}
