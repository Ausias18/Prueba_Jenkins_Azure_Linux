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
           powershell 'c:\\terraform\\terraform.exe init'
           powershell 'c:\\terraform\\terraform.exe plan -out myplan'
       }
     }
	stage('TF Apply') {
      steps {
          powershell 'c:\\terraform\\terraform.exe apply -input=false myplan'
      }
    }
  }
}
