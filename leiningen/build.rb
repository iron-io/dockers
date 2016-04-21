require 'open3'
require_relative '../utils/builder'

name = "iron/leiningen"

tag = "latest"
build("#{name}:#{tag}")

v, status = Open3.capture2e("docker run --rm #{name}:#{tag} lein version")
v = v.strip
# returns: Leiningen 2.6.1 on Java 1.8.0_66-internal OpenJDK 64-Bit Server VM
v = v.split(' ')[1]
puts v
vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
vtag(name, tag, v, true)
