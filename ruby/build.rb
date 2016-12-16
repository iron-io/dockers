require 'open3'
require_relative '../utils/builder'

name = "iron/ruby"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} ruby -v")
v = v.strip
p v
# returns: ruby 2.2.4p230 (2015-12-16 revision 53155) [x86_64-linux-musl]"
v = v.split(' ')[1]
p v
v = v.split('p')[0]
p v
new_tags = vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)
