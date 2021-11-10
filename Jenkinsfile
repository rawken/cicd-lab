pipeline {
    agent none
    stages {
        stage("Build image") {
            agent {
                dockerfile {
    		filename 'Dockerfile'
    		additionalBuildArgs '--tag cicd-lab-test:v0.0.1'
                }
            }
        }
        stage("Deploy kind") {
            agent {
                docker {
                    image 'cicd-lab-test:v0.0.1'
    		args '--rm -v /var/run/docker.sock:/var/run/docker.sock --network="host"'
                }
            }
        }
    }
}
