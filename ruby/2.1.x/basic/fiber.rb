# fiber may be called coroutine in other language
# fiber explicitly describes task switching within the program
f = Fiber.new do
  (1..3).each do |i|
    Fiber.yield i
  end
  nil
end

p f.resume # => 1
p f.resume # => 2
p f.resume # => 3
p f.resume # => nil
p f.resume # => FiberError dead fiber called