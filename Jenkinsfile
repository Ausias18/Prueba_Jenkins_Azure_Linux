pipeline {
  agent any
  
  stages {
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
	  stage('TF Configure') {
		  steps { 
			  ansible-playbook -i inventory.yml -s iis-ansible.yml
		  }
  }
}
