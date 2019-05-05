node{
        
   stage('SCM Checkout'){
   	  git 'https://github.com/kuberguy/helloworld'
   //check out from git
   }
   stage('Mvn packaging and compling'){
        
   	def mavenHome = tool name: 'maven-3', type: 'maven'
   	def mavenCommand = "${mavenHome}/bin/mvn"
   	sh "${mavenCommand} clean package"
	//Maven clean compile
   }
   stage('Docker Image Build'){        
   	sh 'docker build -t Mayur1704/hello-world:1.1.0 .'
   }
   stage('Docker Image push'){
       withCredentials([string(credentialsId: 'dpwd', variable: 'dhp')]) {
       sh "docker login -u mayur1704 -p ${dhp}"
   }
   	sh 'docker push Mayur1704/hello-world:1.1.0 '
   }
   stage('Container start on server'){
   	  sh 'docker run -p 8080:8080 -d --name my-app mayur1704/hello-world:1.1.0'
	  //spinning up Docker container with port 8080:8080	
   }
}