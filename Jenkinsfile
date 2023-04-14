pipeline {   
  agent{      
    node { label 'node_js'}     
  }  
  environment {     
    DOCKERHUB_CREDENTIALS= credentials('Dockerhub')     
  }    
  stages {         
    stage("Git Checkout"){           
      steps{                
	git branch: 'main', url: 'https://github.com/arunprabhavathi456/springboot-webapplication.git'                
	echo 'Git Checkout Completed'            
      }        
    }
       stage('maven build'){
            
         steps{
                sh "mvn clean install"                             
                     
             }
        
          }
	  
    stage('Build Docker Image') {         
      steps{                
	sh 'sudo docker build -t arunprabhavathi456/arun_text:tagname .'           
        echo 'Build Image Completed'                
      }           
    }
    stage('Login to Docker Hub') {         
      steps{                            
	sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                 
	echo 'Login Completed'                
      }           
    }               
    stage('Push Image to Docker Hub') {         
      steps{                            
	sh 'sudo docker push arunprabhavathi456/arun_text:tagname'                 
	      echo 'Push Image Completed'       
      }           
    }      
  } //stages 
  post{
    always {  
      sh 'docker logout'           
    }      
  }  
} //pipeline
