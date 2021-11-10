pipeline {
    stage("Build image") {
        agent {
            dockerfile {
                
            }
        }
    }
    stage("Deploy kind") {
        agent {
            docker {
                image ''
            }
        }
    }
}
