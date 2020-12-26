file = File.open("nyan.txt", "r")
lines = file.readlines
file.close

file = File.open("nyan_copy.txt", "w")
file.write(lines.join)
file.close
