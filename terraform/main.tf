resource "docker_image" "jfrog" {
  name = "jfrog"
  build {
    path = "."
    tag  = ["jfrog:develop"]
    dockerfile = Dockerfile
    #(String) Name of the Dockerfile. Defaults to Dockerfile.
  /*  build_arg = {
      foo : "zoo"
    }
    label = {
      author : "zoo"
    }*/
  }
}
