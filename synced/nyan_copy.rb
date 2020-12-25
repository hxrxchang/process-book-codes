# file = File.open("nyan.txt", "r")
file = $stdin # terminalでcontrol + d でEOF
lines = file.readlines
file.close

# file = File.open("nyan_copy.txt", "w")
file = $stdout
file.write(lines.join)
file.close
