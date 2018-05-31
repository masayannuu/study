# String literal
r = "ruby"
v = r
r += "2.1.10"
p r # => "ruby2.1.10"
p v # => "ruby"
# string.<< is destructive method

a = "variable"
# % literal
# dubble quart
p %?#{a}hoge? # => "variablehoge"
p %Q?hoge#{a}? # => "hogevariable"

# single quart
p %q<#{a}hoge> # => "\#{a}hoge"
p %q[hoge#{a}] # => "hoge\#{a}"

# symbol
p %s*symbol* # => :symbol

# array
p %W(i am a men #{a}) # => ["i", "am", "a", "men", "variable"]
p %w&i am a men& # => ["i", "am", "a", "men"]