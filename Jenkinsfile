pipeline {
  agent any
  
  stages {
	stage('Install') {
      steps {
        script {
          terraform.install(
            version:      '0.12.18',
            install_path: '/tmp',
            platform:     'windows'
          )
        }
      }
    }
	stage('TF Plan') {
       steps {
           sh 'terraform init'
           sh 'terraform plan -out myplan'
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
        container('terraform') {
          sh 'terraform apply -input=false myplan'
        }
      }
    }
  }
}
