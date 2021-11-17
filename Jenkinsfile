pipeline {
    agent {
        docker {
            image '172.18.66.15:5000/cicd-lab-test:v0.0.1'
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
