pipeline {
   agent any
   stages {
        stage('Build Docker Image') {
           when {
                branch 'master'
           }
           steps {
               script {
                 app = docker.build("aakashkadam992/nginx-CI-image")
                 app.inside {
                    sh 'echo $(curl localhost:80)'
                 }

              }
          }
        }
        stage('Push Docker Image') {
          when {
               branch 'master'
          }
          steps {
              script {
                  docker.withRegistry('https://registry.hub.docker.com', 'docker_hub') {
                     app.push("$(env.BUILD_NUMBER")
                     app.push("latest")
                 }
             }
         }


       }

    }

}      
