# initialize
p /Ruby/
p %r{Ruby}
p Regexp.new "Ruby"

/bb/ =~ "aabbcc"
p $` # before => "aa"
p $& # match => "bb"
p $' # after => "cc"

# Regexp`s === is pregmatch
reg = %r[^(aa|bb)c$]
p reg === "aac" # => true
p reg === "bbc" # => true