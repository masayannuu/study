while not DATA.eof?
  lines = DATA.readlines # read all lines from file. this is return array has data of row.
  lines.map(&:chomp!)
  lines.reverse # non-destructive
  p lines
end

__END__
1
2
3
4
5