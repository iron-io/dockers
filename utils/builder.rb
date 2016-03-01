
def build(name)
  puts "Building #{name}..."
  cmd = "docker build -t #{name} ."

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
end

# numtags is how many version tags starting from patch. If 1, then only patch will be applied.
def vtag(name, fromtag, v, dev=false, numtags=3)
  numtags.times do |i|
    to = "#{name}:#{v}"
    to += "-dev" if dev
    from = "#{name}:#{fromtag}"
    puts "Tagging #{from} with #{to}"
    out, status = Open3.capture2e("docker tag #{from} #{to}")
    puts out
    v = v[0...v.rindex('.')] if i != 2
  end
end
