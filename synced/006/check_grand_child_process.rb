# 孫プロセスは親の子プロセスが死んだ場合、親がどうなるか調べる
pid = fork

if pid.nil?
  grand_child_pid = fork
  if grand_child_pid.nil?
    # 孫プロセス
    puts '孫プロセスの親プロセスID', Process.ppid
    sleep 2
    puts '孫プロセスの親プロセスID', Process.ppid
  else
    # 子プロセス
    puts '子プロセスの親プロセスID', Process.ppid
    puts '子プロセスのID', Process.pid
    sleep 1
    exit
  end
else
  puts '親プロセスID', Process.pid
end

# 分かったこと: 孫プロセスも親プロセスが死んだら孤児になってPID 1に引き取られる
