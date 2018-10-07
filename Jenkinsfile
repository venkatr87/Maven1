pipeline{
  agent
    {
      label "slave1"
    }
    stages
      {
        stage ("Build")
          {
            steps
            {
              sh(script:"mvn clean install")
            }
          }
        stage ("Docker")
        {
          steps
          {
            sh(script: "docker build -t myubutu:3.0 .")
            withCredentials([usernamePassword(credentialsId: '602063bd-691c-4f63-8fa0-a153239da54a', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) 
            {
              sh(script: "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}")
            }
            sh(script: "docker tag myubutu:3.0 venkatr87/myubuntu:${BUILD_NUMBER}")
            sh(script: "docker push venkatr87/myubuntu:${BUILD_NUMBER}")
            sh(script: "docker run -t venkatr87/myubuntu:${BUILD_NUMBER}")               
          }
        }
      }
  }
