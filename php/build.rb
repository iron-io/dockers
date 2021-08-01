require 'open3'
require_relative '../utils/builder'

name = "iron/php"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} php -v")
v = v.strip
puts v
# returns: PHP 8.0.9 (cli) (built: Jul 30 2021 03:43:07) ( NTS ) \nCopyright (c) The PHP Group\nZend Engine v4.0.9, Copyright (c) Zend Technologies
v = v.split(' ')[1]
puts v
new_tags = vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
new_tags += vtag(name, tag, v, true)

push_all(name, new_tags)
