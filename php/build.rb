require 'open3'
require_relative '../utils/builder'

name = "iron/php"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} php -v")
v = v.strip
puts v
# returns: PHP 5.6.17 (cli) (built: Jan 24 2016 22:24:02) \nCopyright (c) 1997-2015 The PHP Group\nZend Engine v2.6.0, Copyright (c) 1998-2015 Zend Technologies
v = v.split(' ')[1]
puts v
vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
vtag(name, tag, v, true)
