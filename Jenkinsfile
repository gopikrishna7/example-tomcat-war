pipeline{
    agent any
    parameters{
        booleanParam(name:'execute_checkout',defaultValue: true ,description:'')
        booleanParam(name:'execute_build',defaultValue: true ,description:'')
        booleanParam(name:'execute_builddocker',defaultValue: true ,description:'')
    }
    
    
    
    stages{
        stage ('checkout'){
            steps{
                git branch: 'master', url: 'https://github.com/gopikrishna7/example-tomcat-war.git'
                echo "check out stage completed"
            }
        }

        stage ('build docker image'){
            steps{
                sh "docker build -t gopikrishna99899/example-tomcat-war:998994 ."
            }
        }
        stage('docker login and push'){
            environment{
                SERVER_CRED=credentials('dockerhub')
            }
            steps{
                sh "docker login -u gopikrishna99899 -p ${SERVER_CRED_PSW}"
                sh "docker push gopikrishna99899/example-tomcat-war:998994"
            }


        }
        
    }
    
}
