File.open("test") do |io|
  while ! io.eof?
    print io.read(1)
    io.seek(1, IO::SEEK_CUR)
  end
end