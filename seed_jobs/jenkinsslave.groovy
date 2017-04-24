def gitUrl = 'https://github.com/pamkenyon/rest_api.git'

job('Create Ubuntu Slave') {
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
    steps {
        configure { node ->
            // node represents <project>
            node << builders {
            'com.nirima.jenkins.plugins.docker.builder.DockerBuilderPublisher' {
                    dockerFileDirectory('docker/slave')
                    tags(class: 'java.util.Collections$UnmodifiableRandomAccessList', 'resolves-to':'java.util.Collections$UnmodifiableList') {
                        c(class: 'list') {
                            string('jenkinsslave')
                        }
                        list(reference: 'c')
                    }
                    cloud('Kenyonator_cloud')
                }
            }
        }
    }
}