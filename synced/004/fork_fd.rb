read_file = File.open("nyan.txt", "r")

pid = Process.fork

if pid.nil?
  # 子プロセス
  lines = []
  # オープンファイル記述は複製されないためread_fileは空
  while line = read_file.gets
    lines << line
  end

  write_file = File.open("child.txt", "w")
  write_file.write(lines.join)
  write_file.close
else
  # 親プロセス
  lines = []
  while line =read_file.gets
    lines << line
  end

  write_file = File.open("parent.txt", "w")
  write_file.write(lines.join)
  write_file.close
end

read_file.close
