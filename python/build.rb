
require 'open3'
require_relative '../utils/builder'

name = "iron/python"

# python2 first
Dir.chdir 'python2'
tag = "2"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} python --version")
v = v.strip
p v
# returns: Python 2.7.11
v = v.split(' ')[1]
p v
new_tags = vtag(name, tag, v)

Dir.chdir 'dev'
tag = "2-dev"
build("#{name}:#{tag}")
p v
new_tags += vtag(name, tag, v, true)

# now 3
Dir.chdir '../../python3'
tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} python3 --version")
v = v.strip
p v
# returns: Python 2.7.11
v = v.split(' ')[1]
p v
new_tags += vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
p v
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)