pipeline{
    
    agent any 
    
    environment {
        dockerimagename = "arunprabhavathi456/arunshop1"
        dockerIMage = ""

    }
    
    stages {
        
        stage('Git Checkout'){
            
            steps{
                                                   
                    git branch: 'main', url: 'https://github.com/arunprabhavathi456/springboot-webapplication.git'
                }
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
        stage('Static code analysis'){
            
            steps{
                withSonarQubeEnv('sonarqube-8.9.1') {
                sh "mvn sonar:sonar"                             
                     
             }
        
          }
    
      }
        stage('Build image'){
            
            steps{
                                                   
               dockerImage = docker.build dockerimagename
            }
        
       }
          
       stage('Pushing image'){
            
           environment {
                                                   
               registryCredential = 'Dockerhub'
            }
           
           steps{
               docker.withRegistry( 'https://registry.hub.docker.com', registryCredential) {
                   dockerImage.push("latest")
        
           }
        
       }
        
             
    }
                              
 }
    
  
        

          
         
     
      
                    
            
