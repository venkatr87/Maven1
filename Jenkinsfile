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
              shell(script:"mvn clean install"
            }
          }
      }
  }
