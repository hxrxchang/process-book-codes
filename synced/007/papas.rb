Signal.trap(:INT) do
  STDERR.puts "ぬわーっ!!!"
  exit
end

while true do
  sleep
end
