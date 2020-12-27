Signal.trap(:INT) do
  STDERR.puts "got sigint!!!"
  exit
end

fork
sleep
