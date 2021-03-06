require 'socket'

listening_socket = TCPServer.open(12345)

loop do
  puts "accepting"
  socket = listening_socket.accept
  puts "accepted a client"

  loop do
    line = socket.gets
    line.gsub!(/[\r\n]/, "")

    if line == "exit"
      socket.close
      puts "closed a connection"
      break
    end

    puts line
  end
end

