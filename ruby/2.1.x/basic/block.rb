#basic
x = 1

def func x
  x + yield
end
p func(1) { 2 } # => 3
p func(1) { x+= 2 } # => 4
p x # => 3

# with args
def func a, b
  a + yield(b, 3)
end
p func(1, 2) {|x,y| x+y } # => 6

# Proc is Object for Block
proc = Proc.new{|x| p x}
proc.call(1) # => 1

# lazy evaluation
def get_counter start
  Proc.new{|up| start += up }
end
count_up = get_counter(1)
p count_up.call(1) # => 2
p count_up.call(3) # => 5

# to_block
def func x
  x + yield
end
proc = Proc.new {2}
p func(1, &proc) # => 3

# to_plock
def func x, &proc
  x + proc.call
end
p func(1) { 2 } # => 3

# lambda
lmb = lambda{|x| p x }
p lmb.class # => Proc
lmb.call("call") # => "call"

def func
  proc = Proc.new{return 1}
  proc.call
  2 # => not execute
end
p func # => 1

def func
  proc = -> {return 1} # => sugger sintax for lambda
  proc.call
  2 # => execute
end
p func # => 2

# argument
p1 = Proc.new{|x,y| y}
p p1.call(1) # => nil. but lambda raise ArgumentError

p1 =->(x, y) { p x + y }
p1.call(10, 10) # => 20

# array, hash, range
[3,4,5].each_with_index do |value, index|
  p value + index
end # => 3, 5, 7

{a: 1, b: 2}.each_key do |key|
  p key
end # => "a", "b"

("a".."z").each do |value|
  value
end # => "a" ~ "z"

# loop
2.upto(4) do |i|
  p i
end # => 2~4

5.downto(3) do |i|
  p i
end # => 5~3

4.times do |i|
  p i
end # => 0~3