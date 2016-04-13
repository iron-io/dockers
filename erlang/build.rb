require 'open3'
require_relative '../utils/builder'

name = "iron/erlang"

tag = "latest"
build("#{name}:#{tag}")
v, status = Open3.capture2e("docker run --rm #{name}:#{tag} erl -noshell -eval 'io:fwrite(erlang:system_info(otp_release)), halt().'")
v = v.strip
# returns: X (R17 or later) or X.Y.Z (R16)
puts v
vtag(name, tag, v, false)

Dir.chdir 'dev'
tag = "dev"
build("#{name}:#{tag}")
vtag(name, tag, v, true)
