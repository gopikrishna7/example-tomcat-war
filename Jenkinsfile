pipeline{
    agent any
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
    }
    
}
