pid = fork

if pid.nil?
  #子プロセス
  # 即死
  exit
else
  #親プロセス
  puts pid
  while true
    sleep
  end
end
