p 2.2.ceil # => 3
p 1.9.floor # => 1

p 2.2.round # => 2
p 1.9.round # => 2

p 8.9.truncate # => 8

p -1.1.ceil # => -1
p -1.1.floor # => -2
p -1.1.round # => -1
p -1.1.truncate # => -1

p -3.abs # => 3

1.step(100, 10) {|n| p n }
1.5.step(3.5, 0.5) {|f| p f}