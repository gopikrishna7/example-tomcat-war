pipeline{
    agent any
    tools {
        maven 'Maven' 
    }
    stages{
        stage ('checkout'){
        steps{
            git branch: 'master', url: 'https://github.com/gopikrishna7/example-tomcat-war.git'
            echo "check out stage completed"
            nodejs('Node'){
                bat "npm -version"
        }
    }
    stage ('build'){
        steps{
            echo "build starting"
            bat "mvn clean package"
    }
    }
    
}
}
