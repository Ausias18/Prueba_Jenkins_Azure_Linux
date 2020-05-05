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
	   sh '/usr/local/bin/terraform state list'
	   sh '/usr/local/bin/terraform state rm azurerm_network_interface_security_group_association.main, azurerm_network_security_group.main, azurerm_public_ip.main, azurerm_resource_group.main, azurerm_subnet.internal, azurerm_virtual_machine.main, azurerm_virtual_network.main'
	   sh '/usr/local/bin/terraform state list'
	   sh '/usr/local/bin/terraform refresh'
           sh '/usr/local/bin/terraform plan -out=myplan -input=false'
       	      }
     			}
	  stage('TF Apply') {
      steps {
         sh '/usr/local/bin/terraform apply -input=false myplan'
	    }
 	 		     }
         }
	 }
