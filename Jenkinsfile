pipeline{
    agent any
    environment{
        Version='1.2'
        
    }
    parameters{
        
        choice(name:'VERSION',choices: ['1.1.0','1.1.1','1.1.2'],descreption: '')
        booleanParam(name:'executeTests',defaultValue: true, descreption:'')
    }
    stages{
        stage ('checkout'){
            steps{
                
                echo "check out stage completed for ${params.VERSION}"    
            }
        }
        stage ('build'){
            when{
                expression{
                    params.executeTests
                }
            }
            steps{
                echo " testing is done"
            }
        }

    
    }
}
