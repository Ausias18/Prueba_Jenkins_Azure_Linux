pipeline {
  agent any
  
  stages {
	  stage ('quien soy') {
		  steps {
		  sh 'whoami'
		  }}
	   stage('Create Image') {
       steps {
           sh '/usr/local/bin/terraform init -input=false'
       	      }
     			}
	  
        stage('TF Plan') {
       steps {
           sh '/usr/local/bin/terraform init -input=false'
	   sh '/usr/local/bin/terraform state list'
	   sh '/usr/local/bin/terraform refresh'
           sh '/usr/local/bin/terraform plan -out=myplan -input=false'
       	      }
     			}
	 stage('Validacion y Configuracion') {
      	steps {
           sh '/Pregunta'
	}
	 }
	  
	 stage('TF Apply') {
      	steps {
           sh '/usr/local/bin/terraform apply -input=false myplan'
	    }
 	 		     }

         }
	 }
