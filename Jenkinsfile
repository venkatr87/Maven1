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
      }
  }
