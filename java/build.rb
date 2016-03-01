
require 'open3'
require_relative '../utils/builder'

name = "iron/java"

# python2 first
Dir.chdir 'java-1.7'
tag = "1.7"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} java -version")
v = v.strip
puts v
# returns: openjdk version \"1.8.0_66-internal\"\nOpenJDK Runtime Environment (build 1.8.0_66-internal-alpine-r2-b17)\nOpenJDK 64-Bit Server VM (build 25.72-b15, mixed mode)
v = v.split( /\r?\n/ )
p v
v.each do |line|
  puts "line: #{line}"
  split = line.split(' ')
  if split[1] == "version"
    v = split[2]
    break
  end
end
v = v.tr('"', '')
puts v
split = v.split('_')
v = split[0]
puts v
vtag(name, tag, v, false, 1)

Dir.chdir 'dev'
tag = "1.7-dev"
build("#{name}:#{tag}")
vtag(name, tag, v, true, 1)

# now 1.8
Dir.chdir '../../java-1.8'
tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} java -version")
v = v.strip
p v
# returns: Python 2.7.11
v = v.split( /\r?\n/ )
p v
v.each do |line|
  puts "line: #{line}"
  split = line.split(' ')
  if split[1] == "version"
    v = split[2]
    break
  end
end
v = v.tr('"', '')
puts v
split = v.split('_')
v = split[0]
puts v
vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
puts v
vtag(name, tag, v, true)
