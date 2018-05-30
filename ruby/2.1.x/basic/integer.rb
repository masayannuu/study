p 100.+(1) # => 101
# because, + is method of Integer Class.(ruby2.4~) Fixnum & Bignum Classes are alias of Integer.
# bute, ruby ~2.4, Fixnum & Bignum classes are subclass of Integer.

p 0b10 # => 2 binary
p 0o10 # => 8 octal
p 0d10 # => 10 demical
p 0x10 # => 16 hexademical

p 3.14r # => (157/50) r is rational syntax
p 3.14i # => (0+3.14i) complex