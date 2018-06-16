p Encoding.compatible?(Encoding::UTF_8, Encoding::US_ASCII) # => #<Encoding:UTF-8>
p Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS) # => nil

# string
a = "abc"
b = a.encode("EUC-JP")
p b.encoding # => #<Encoding:EUC-JP>
p b # => abc
