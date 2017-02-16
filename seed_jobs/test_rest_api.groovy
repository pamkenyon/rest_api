def gitUrl = 'https://github.com/pamkenyon/rest_api.git'

job('my_restAPI_JobDSL') {
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
