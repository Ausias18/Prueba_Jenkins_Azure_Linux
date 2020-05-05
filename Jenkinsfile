pipeline {
  agent any
  
  stages {
	  stage ('quien soy') {
		  steps {
		  sh 'whoami'
		  }}
        stage('TF Plan') {
       steps {
           sh '/usr/local/bin/terraform init -input=false'
	   sh '/usr/local/bin/terraform validate'
	   sh '/usr/local/bin/terraform show'
	   sh '/usr/local/bin/terraform refresh'
           sh '/usr/local/bin/terraform plan -out=myplan2 -input=false'
       	      }
     			}
	  stage('TF Apply') {
      steps {
         sh '/usr/local/bin/terraform apply -input=false myplan2'
	    }
 	 		     }
         }
	 }
