a = Rational(1,2)
p a.denominator # => 2
p a.numerator # => 1

p 0.25r # => (1/4)
p 0.25.denominator # => 4
p 0.25.numerator # => 1

p Rational(1,2).divmod Rational(1,3) # => [1, (1/6)]
p Rational(-4, 13).abs # => (4/13)
