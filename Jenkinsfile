pipeline {
  agent any
  
  stages {
	  stage ('quien soy') {
		  steps {
		  sh 'whoami'
		  }}
        stage('TF Plan') {
       steps {
           sh '/usr/local/bin/terraform init'
	   sh '/usr/local/bin/terraform refresh'
           sh '/usr/local/bin/terraform plan -out myplan'
       	      }
     			}
	  stage('TF Apply') {
      steps {
         sh '/usr/local/bin/terraform apply -input=false myplan'
	    }
 	 		     }
         }
	 }
