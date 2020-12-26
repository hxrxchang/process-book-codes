file = File.open("nyan.txt", "r")

pid = Process.fork

if pid.nil?
  sleep 1
  puts file.readlines.join
  file.close
else
  file.close
  Process.wait(pid)
end
