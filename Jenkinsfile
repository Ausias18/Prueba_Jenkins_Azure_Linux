pipeline {
  agent any
  
  stages {
	  stage ('quien soy') {
		  steps {
		  sh 'whoami'
		  }
	  }
	  
	   stage('Create Image') {
       steps {
           sh '/usr/local/bin/packer validate packer.json'
	   sh '/usr/local/bin/packer build packer.json'
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
	 stage('Validacion') {
      	steps {
           sh '/usr/local/bin/terraform validate'
	}
	 }
	  
	  stage('Approval-Apply') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
	steps {
        container('terraform') {
          sh '/usr/local/bin/terraform apply -input=false myplan'
        }
      }

         }
	 }
