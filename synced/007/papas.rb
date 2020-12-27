Signal.trap(:INT) do
  STDERR.puts "!!!"
  exit
end

while true do
  sleep
end
