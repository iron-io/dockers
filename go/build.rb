require 'open3'
require_relative '../utils/builder'

name = "iron/go"

# latest doesn't actually contain go, so swap dev and latest in this build

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")

v, status = Open3.capture2e("docker run --rm #{name}:#{tag} go version")
v = v.strip
p v
# returns: go version go1.6 linux/amd64
v = v.split(' ')[2]
p v
v = v[2..v.length]
p v
v += ".0"
p v
vtag(name, tag, v, true)

tag = "latest"
build("#{name}:#{tag}")
vtag(name, tag, v, false)
