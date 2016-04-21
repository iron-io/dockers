
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
  cmd = "docker build -t #{name} ."

  stream_exec(cmd)
end

# numtags is how many version tags starting from patch. If 1, then only patch will be applied.
def vtag(name, fromtag, v, dev=false, numtags=3)
  newnum = [numtags, v.split(".").length()].min()
  newnum.times do |i|
    to = "#{name}:#{v}"
    to += "-dev" if dev
    from = "#{name}:#{fromtag}"
    puts "Tagging #{from} with #{to}"
    out, status = Open3.capture2e("docker tag #{from} #{to}")
    puts out
    v = v[0...v.rindex('.')] if i < (newnum - 1)
  end
end
