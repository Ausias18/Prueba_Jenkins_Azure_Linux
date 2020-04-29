pipeline {
  agent any
  
  stages {
	  stage('inicializacion') {
		  steps {
		  powershell 'c:\\terraform\\'
		  }
	  }
        stage('TF Plan') {
       steps {
           powershell 'terraform init'
           powershell 'terraform plan -out myplan'
       }
     }
	stage('TF Apply') {
      steps {
          powershell 'terraform apply -input=false myplan'
      }
    }
  }
}
