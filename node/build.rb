require 'open3'
require_relative '../utils/builder'

puts "WARNING: Don't run this until alpine has node 5.0 package"
exit

name = "iron/node"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} node -v")
v = v.strip
# returns: vX.Y.Z
puts v
v = v[1..v.length] # chop off v
puts v
vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
vtag(name, tag, v, true)
