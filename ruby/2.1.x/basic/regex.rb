# initialize
p /Ruby/
p %r{Ruby}
p Regexp.new "Ruby"

p /bb/ =~ "aabbcc" # => 2
p $` # before => "aa"
p $& # match => "bb"
p $' # after => "cc"

# Regexp`s === is pregmatch
reg = %r[^(aa|bb)c$]
p reg === "aac" # => true
p reg === "bbc" # => true

# options
i = /abcdefg/i
p i === "ABCdefg" # => true
p i === "abcdEFG" # => true

# ignore space & #comments
p /\d* .+/x === "10hoge" # => true

p /a.*b/ === "a\nb" # => false
p /a.*b/m === "a\nb" # => true

a = Regexp.new("abc")
p a.match("abcdefg") # => #<MatchData "abc">

# mapping $_ & ~ method
$_ = "abcdefg"
p ~a # => 0
p ~Regexp.new("b") # => 1

# escape
p Regexp.escape("array.push(hash[key])") # => "array\\.push\\(hash\\[key\\]\\)"

/abcdefg/ =~ "abcdefghijk"
p Regexp.last_match # => #<MatchData "abcdefg">
p $~ # => #<MatchData "abcdefg">
p Regexp.last_match(0) # => "abcdefg"

p /(abc)d(efg)/ =~ "abcdefghijk" # => 0
p Regexp.last_match(2) # => "efg"
p $1 # => "abc"
p $2 # => "efg"
p $` # => ""
p $& # => "abcdefg"
p $' # => "hijk"

# have ignore case option
p Regexp.new("ab").casefold? # => false