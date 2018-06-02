# basic
# using === method in inner logic
case 1
when 1 then
  p 1
end

# multiple
# => 2
case 3
when 1,2 then; p 1
when 3,4 then; p 2
else p 3
end

# range
# => 2
case 7
when 1...7; p 1
when 7..10; p 2
end

# scope
a = "scope"
case a
when "scope"; a += "-literal"
else p 'none'
end
p a # => "scope-literal"