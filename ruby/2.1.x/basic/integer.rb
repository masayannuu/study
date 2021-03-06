p 100.+(1) # => 101
# because, + is method of Integer Class.(ruby2.4~) Fixnum & Bignum Classes are alias of Integer.
# bute, ruby ~2.4, Fixnum & Bignum classes are subclass of Integer.

p 0b10 # => 2 binary
p 0o10 # => 8 octal
p 0d10 # => 10 demical
p 0x10 # => 16 hexademical

p 3.14r # => (157/50) r is rational syntax
p 3.14i # => (0+3.14i) complex

p 100_000_000 # => 100000000 for easy to read

p 3.14.to_c # => (3.14+0i)

p 10.next # => 11
p 10.succ # => 11
p 10.pred # => 9

p 10.modulo 3 # => 1
p 10 % 3 # => 1

p 10 | 3 # => 11
p 10 & 3 # => 2
