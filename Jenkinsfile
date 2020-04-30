pipeline {
  agent any
  
  stages {
        stage('TF Plan') {
       steps {
	   sh 'cd usr/local/bin'
           sh './terraform init'
           sh './terraform plan -out myplan'
       	      }
     			}
	  stage('TF Apply') {
      steps {
         sh './terraform apply -input=false myplan'
	    }
 	 		     }
         }
	 }
