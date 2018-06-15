require 'open3'
require_relative '../utils/builder'

name = "iron/php"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} php -v")
v = v.strip
puts v
# returns: PHP 7.1.17 (cli) (built: May  3 2018 17:39:19) ( NTS ) \nCopyright (c) 1997-2018 The PHP Group\nZend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies
v = v.split(' ')[1]
puts v
new_tags = vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)