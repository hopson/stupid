/* vim: set ft=groovy: */
node {
  stage 'build'
  def img = docker.build('hopson/stupid') //.push()
  stage 'test'
  img.inside {
      sh './bin/rails test'
  }
  stage 'publish'
  sh 'echo publish'
  stage 'deploy'
  sh 'echo deploy'
}
