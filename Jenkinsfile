pipeline{
    
    agent any 

    
    stages {
        
        stage('Git Checkout'){
            
            steps{
                                                   
                    git branch: 'main', url: 'https://github.com/arunprabhavathi456/springboot-webapplication.git'
                    echo 'Git Checkout Completed'   
                }
          }
        stage('Build Docker Image') {  
    steps{                     
	sh 'sudo docker build -t arunprabhavathi456/arunshop1:$101 .'     
	echo 'Build Image Completed'                
    }           
} 
        
    }
    
}    
