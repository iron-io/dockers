
require 'open3'

from = 'iron/node:dev'
cmd = "docker build -t #{from} ."

# stream this one since build can take a bit
Open3.popen2e(cmd) do |stdin, stdout_stderr, wait_thread|
  Thread.new do
    stdout_stderr.each {|l| puts l }
  end

  # stdin.puts 'ls'
  # stdin.close

  wait_thread.value
end

v = `docker run --rm #{from} node -v`.strip
# returns vX.Y.Z
p v
v = v[1..v.length] # chop off v
p v
3.times do |i|
  to = "iron/node:#{v}-dev"
  puts "Tagging #{from} with #{to}"
  p `docker tag #{from} #{to}`
  v = v[0...v.rindex('.')] if i != 2
end
