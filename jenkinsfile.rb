
pipeline
{
  agent any
  stages
  {
    stage ("compile stage")
    {
      steps
      {
        withMaven(maven : 'Maven')
        {
          mvn clean compile
        }
      }
    }
    stage ("Testing Stage")
    {
      steps
      {
        withMaven(maven : 'Maven')
        {
          mvn test
        }
      }
    }
  }
}
