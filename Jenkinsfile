pipeline {
  agent any
  
  stages {
        stage('TF Plan') {
       steps {
           powershell 'c:\\terraform\\terraform.exe init'
           powershell 'c:\\terraform\\terraform.exe plan -out myplan'
       }
     }
	  stage('TF Configure') {
		  steps { 
			ansiblePlaybook inventory: 'inventory.yml', playbook: 'iis-ansible.yml'
		  }
	  }
  }
}
