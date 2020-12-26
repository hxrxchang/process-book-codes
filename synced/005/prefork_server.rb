require "socket"

number_of_workers = 3
listening_socket = TCPServer.open(12345)

number_of_workers.times do
  pid = fork

  if pid
    next
  else
    # 子プロセス

    # クライアント受け入れ無限地獄
    loop do
      puts "accepting..."
      # 子プロセスは全部ここでブロックする。
      socket = listening_socket.accept
      puts "accepted a client!"

      # クライアントの入力受け取り無限地獄
      loop do
        line = socket.gets
        line.gsub!(/[\r\n]/,"")

        if line == "exit"
          socket.close
          puts "closed a connection!"
          break
        end

        puts line
      end
    end
  end
end

# 子プロセスは無限ループしてるからここには届かない
# 親プロセスでは子プロセスの終了を待ち続ける
Process.waitall
