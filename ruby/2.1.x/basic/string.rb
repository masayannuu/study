# String
r = "ruby"
v = r
r += "2.1.10"
p r # => "ruby2.1.10"
p v # => "ruby"
# string.<< is destructive method

p v * 3 # => "rubyrubyruby"

p "a" < "b" # => true
