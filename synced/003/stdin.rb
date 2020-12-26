file = $stdin
lines = file.readlines # terminalでcontrol + d でEOF
file.close

file = $stdout
file.write(lines.join)
file.close
