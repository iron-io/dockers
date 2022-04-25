Dir.chdir 'python3'
tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} python3 --version")
v = v.strip
p v
# returns: Python 2.7.11
v = v.split(' ')[1]
p v
new_tags = vtag(name, tag, v, false)
Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
p v
new_tags += vtag(name, tag, v, true
push_all(name, new_tags)
