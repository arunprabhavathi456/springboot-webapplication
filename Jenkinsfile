pipeline{
    
    agent any 
    
    environment {
        DOCKERHUB_CREDENTIALS=credentials('Dockerhub')
    }
    
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
        stage('Static code analysis'){
            
            steps{
                withSonarQubeEnv('sonarqube-8.9.1') {
                sh "mvn sonar:sonar"                             
                     
             }
        
          }
    
      }
        stage('Build'){
            
            steps{
                                                   
               sh 'docker build -t arunprabhavathi456/arun_text:latest'
            }
        
       }
          stage('Login'){
            
            steps{
                                                   
               sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        
       }
       stage('Push'){
            
            steps{
                                                   
               sh 'docker push 'arunprabhavathi456/arun_text:latest'
            }
        
       }
        post {
            
            always {
                                                   
               sh 'docker logout'
            }
        
       }
                              
   } 
    
}
        

          
         
     
      
                    
            
