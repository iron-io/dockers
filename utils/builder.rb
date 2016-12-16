
class ExecError < StandardError 
  attr_accessor :exit_status, :last_line
  
  def initialize(exit_status, last_line)
    super("Error on cmd. #{exit_status}")
    self.exit_status = exit_status
    self.last_line = last_line
  end
end

def stream_exec(cmd)
  puts "Executing cmd: #{cmd}"
  exit_status = nil
  last_line = ""
  Open3.popen2e(cmd) do |stdin, stdout_stderr, wait_thread|
    Thread.new do
      stdout_stderr.each {|l| 
        puts l
        # Save last line for error checking
        last_line = l
      }
    end

    # stdin.puts 'ls'
    # stdin.close

    exit_status = wait_thread.value
    raise ExecError.new(exit_status, last_line) if exit_status.exitstatus != 0
  end
  return exit_status
end

def build(name)
  puts "Building #{name}..."
  cmd = "docker build --no-cache -t #{name} ."

  stream_exec(cmd)
end

# vtag tags the versions and returns which tags it added
# numtags is how many version tags starting from patch. If 1, then only patch will be applied.
def vtag(name, fromtag, v, dev=false, numtags=3)
  tags_added = [fromtag]
  newnum = [numtags, v.split(".").length()].min()
  newnum.times do |i|
    t = v
    t += "-dev" if dev
    to = "#{name}:#{t}"
    from = "#{name}:#{fromtag}"
    puts "Tagging #{from} with #{to}"
    status = stream_exec("docker tag #{from} #{to}")
    tags_added << t
    v = v[0...v.rindex('.')] if i < (newnum - 1)
  end
  return tags_added
end

def push_all(name, tags)
  tags.each do |t|
    fullname = "#{name}:#{t}"
    puts "Pushing #{fullname}"
    status = stream_exec("docker push #{fullname}")
  end
end
