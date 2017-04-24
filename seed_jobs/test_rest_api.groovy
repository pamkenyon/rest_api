def gitUrl = 'https://github.com/pamkenyon/rest_api.git'

job('my_restAPI_JobDSL') {
  label('jenkinsslave')
  scm {
    git {
      remote {
        name('origin')
        url(gitUrl)
}
      branches('master')
      extensions {}
    }
  }
}
