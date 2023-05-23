pipeline {
    agent any
    triggers {
        pollSCM 'H/2 * * * *'
    }
    stages {
        stage('Shell script 0') {
            steps {
                sh 'make all'
            }
        }
    }
    post {
        success {
            step(
                fingerprint: true,
                artifacts: 'output/libhello.tar.gz',
                $class: 'ArtifactArchiver',
                onlyIfSuccessful: true,
                followSymlinks: false
            )
        }
    }
}
