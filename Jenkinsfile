pipeline{
    agent any
    environment{
        buildNumber=BUILD_NUMBER
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
            bat "docker build -t gopikrishna99899/example-tomcat-war:${buildNumber}"
        }
    }
    }
    
}
