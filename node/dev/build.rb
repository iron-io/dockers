# TODO: copy the build.rb file from ruby and update this. And move into parent dir. 
require 'open3'

base = 'iron/node'
name = "#{base}:dev"

# TEMP: using mhart version
cmd = "docker build -t #{name} -f Dockerfile.mhart ."

# stream this one since build can take a bit
Open3.popen2e(cmd) do |stdin, stdout_stderr, wait_thread|
  Thread.new do
    stdout_stderr.each {|l| puts l }
  end

  # stdin.puts 'ls'
  # stdin.close

  exit_status = wait_thread.value
  puts "exit_status: #{exit_status}"
  raise exit_status if exit_status.exitstatus != 0
end

v = `docker run --rm #{name} node -v`.strip
# returns vX.Y.Z
p v
return
v = v[1..v.length] # chop off v
p v
3.times do |i|
  to = "#{name}:#{v}-dev"
  puts "Tagging #{name} with #{to}"
  p `docker tag #{name} #{to}`
  v = v[0...v.rindex('.')] if i != 2
end
