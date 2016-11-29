require 'open3'
require_relative '../utils/builder'

name = "iron/kotlin"

# latest doesn't actually contain go, so swap dev and latest in this build

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")

v, status = Open3.capture2e("docker run --rm #{name}:#{tag} kotlin -version")
v = v.strip
p v
# returns: Kotlin version 1.0.5 (JRE 1.8.0_66-internal-alpine-r2-b17)
v = v.split(' ')[2]
p v
new_tags = vtag(name, tag, v, true)

Dir.chdir '../'
p Dir.pwd
tag = "latest"
build("#{name}:#{tag}")
new_tags += vtag(name, tag, v, false)

push_all(name, new_tags)
