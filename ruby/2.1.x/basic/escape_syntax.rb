# next
5.times do |i|
  next if i === 3
  p i
end

# redo
5.times do |i|
  # redo if i == 3 # => infinit loop
  p i
end