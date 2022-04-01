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
        stage ('build'){
            steps{
                bat "mvn clean package"
            }
        }
        stage ('build docker image'){
            steps{
                bat "docker build -t gopikrishna99899/example-tomcat-war:${env.BUILD_NUMBER} ."
            }
        }
        stage('docker login and push'){
            environment{
                SERVER_CRED=credentials('dockerhub')
            }
            steps{
                bat "docker login -u gopikrishna99899 -p ${SERVER_CRED_PSW}"
                bat "docker push gopikrishna99899/example-tomcat-war:${env.BUILD_NUMBER}"
            }


        }
        stage('deploy as dockercontainer in docker server'){
            steps{
                
                sshagent(['dockerserver']) {
                    bat "ssh -o StrictHostKeyCheking=no ubuntu@ec2-13-127-110-243.ap-south-1.compute.amazonaws.com docker run -d -p 8080:8080 --name wa gopikrishna99899/example-tomcat-war:${env.BUILD_NUMBER}"
                }
            
            }
        }
    }
    
}
