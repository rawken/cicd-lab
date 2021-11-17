pipeline {
    agent {
        docker {
            image 'cicd-lab-test:v0.0.1'
    	    args '--rm -v /var/run/docker.sock:/var/run/docker.sock --network="host"'
        }
    }
    stages {   
        stage("Deploy kind") {
            steps {
                sh 'start.sh'
            }
        }
    }
}
