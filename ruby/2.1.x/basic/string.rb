# String
r = "ruby"
v = r
r += "2.1.10"
p r # => "ruby2.1.10"
p v # => "ruby"
# string.<< is destructive method

foo = "hoge"
p foo.object_id
moge = foo
p moge.object_id
foo += "moge"
p foo.object_id
hoge = foo
fuga = foo << "moge"
p fuga.object_id
p hoge.object_id
p fuga
p hoge
p moge.object_id

p v * 3 # => "rubyrubyruby"

p "a" < "b" # => true

p "abcdefghijklmnopqrstuvwxyz".gsub(/abc/) {|s|s.upcase} # => "ABCdefghijklmnopqrstuvwxyz"
p "abcdefghijklmnopqrstuvwxyz".scan(/.{3}/) # => ["abc", "def", "ghi", "jkl", "mno", "pqr", "stu", "vwx"]
p "abcdefghijklmnopqrstuvwxyz".match(/.{3}/) # => #<MatchData "abc">