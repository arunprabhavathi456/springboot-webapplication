pipeline{
    
    agent any 
    
    stages {
        
        stage('Git Checkout'){
            
            steps{
                     
                    git branch: 'main', url: 'https://github.com/arunprabhavathi456/springboot-webapplication.git'
                }
           }
         stage('UNIT Testing'){
            
            steps{
               sh 'mvn test'
                }
           }
        stage('Integration testing'){
            
            steps{
               sh 'mvn verify -DskipUnitTests'
                }
           }
         stage('Maven Build'){
            
            steps{
               sh 'mvn clean install'
                }
           }
      }
 }
      
                    
            
