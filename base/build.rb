require 'open3'
require_relative '../utils/builder'

stream_exec('docker pull alpine')
stream_exec('docker pull alpine:edge')

name = "iron/base"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} cat /etc/os-release")
v = v.strip
puts v
# returns: NAME=\"Alpine Linux\"\nID=alpine\nVERSION_ID=3.3.1\nPRETTY_NAME=\"Alpine Linux v3.3\"\nHOME_URL=\"http://alpinelinux.org\"\nBUG_REPORT_URL=\"http://bugs.alpinelinux.org\"
v = v.split( /\r?\n/ )
p v
v.each do |line|
  puts "line: #{line}"
  split = line.split('=')
  if split[0] == "VERSION_ID"
    v = split[1]
    break
  end
end
p v
vtag(name, tag, v, false)

Dir.chdir 'edge'
tag = "edge"
build("#{name}:#{tag}")
