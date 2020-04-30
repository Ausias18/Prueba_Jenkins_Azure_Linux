pipeline {
  agent any
  
  stages {
        stage('TF Plan') {
       steps {
           sh 'usr/loca/bin/terraform init'
           sh 'usr/loca/bin/terraform plan -out myplan'
       	      }
     			}
	  stage('TF Apply') {
      steps {
         sh 'usr/loca/bin/terraform apply -input=false myplan'
	    }
 	 		     }
         }
	 }
