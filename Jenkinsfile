pipeline {
  agent any
  
  stages {
	  stage('inicializacion') {
		  steps {
		  powershell 'cd c:\\\terraform'
		  }
	  }
        stage('TF Plan') {
       steps {
           powershell 'terraform init'
           powershell 'terraform plan -out myplan'
       }
     }
	 stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }
	stage('TF Apply') {
      steps {
          powershell 'terraform apply -input=false myplan'
      }
    }
  }
}
