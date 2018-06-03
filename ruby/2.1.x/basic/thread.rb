# generate new thread
t = Thread.new do
  p "start"
  sleep 5
  p "end"
end
p "wait"
t.join # => wait thread end

# Thread Class generate from
# Thread.start
# Thread.fork
# Thread.new
3.times do |i|
  Thread.start(i) do |index|
    p "thread-#{index} start"
  end
end
sleep 1