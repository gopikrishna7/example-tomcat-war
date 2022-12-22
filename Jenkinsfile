pipeline{
    agent any
    tools{
        maven "maven"
    }
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
        stage('scan'){
            steps{
                withSonarQubeEnv(installationName: 'sq1'){
                    sh 'mvn clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
                }
            }
        }

        
        
        
    }
    
}
