# basic range literal
1..10 # => 1~10
"a".."z" # => a~z
1...10 # => 1~9

# range.== is equality determination
# range.=== is comprehensive determination
p (1..5).include? 3 # => true
p (1..5).include? 6 # => false
p (1..5) == 3 # => false
p (1..5) === 3 # => true
p (1..5) === 9 # => false

for i in "a".."z"
  i # => get a~z
end

# range for array access
a = ("a".."e").to_a
p a[2,3] # => "c", "d", "e"
p a[2..3] # => "c", "d"
p a[2...3] # => "c"

a = "abcdef"
p a[1] # => "b"
p a[1..2] # => "bc"
p a[1...2] # => "b"