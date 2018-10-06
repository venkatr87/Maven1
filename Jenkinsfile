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
            sh(script: "docker login -u venkatr87 -p India!23")
            sh(script: "docker tag myubutu:3.0 venkatr87/myubutu:${BUILD_NUMBER}")
            sh(script: "docker push venkatr87/myubuntu:${BUILD_NUMBER}")
            sh(script: "docker run -it venkatr87/myubuntu:${BUILD_NUMBER}")               
          }
        }
      }
  }
