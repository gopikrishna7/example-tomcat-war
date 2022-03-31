pipeline{
    agent any
    environment{
        PATH='C:/Maven/apache-maven-3.8.4/bin:$PATH'

    stages{
        stage ('checkout'){
        steps{
            git branch: 'master', url: 'https://github.com/gopikrishna7/example-tomcat-war.git'
            echo "check out stage completed"
        }
    }
    stage ('build'){
        steps{
            sh "mvn clean package"
        }
    }
    }
    
}
