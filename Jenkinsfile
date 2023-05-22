pipeline {
  agent any
  stages {
    // stage('Checkout Scm') {
    //   steps {
    //     git 'https://github.com/edward-cant/pipeline-libhello'
    //   }
    // }

    stage('Shell script 0') {
      steps {
        sh 'make all'
      }
    }
  }
  post {
    success {
      step(fingerprint: true, artifacts: 'output/libhello.tar.gz', $class: 'ArtifactArchiver', onlyIfSuccessful: true, followSymlinks: false)
    }
  }
}
