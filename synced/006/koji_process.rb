pid = fork

if pid.nil?
  puts Process.ppid
  sleep 2
  puts Process.ppid
else
  sleep 1
  # Process.wait(pid) 子プロセスを待たないと孤児プロセスになる
  exit
end
