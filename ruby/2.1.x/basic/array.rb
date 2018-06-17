animals = ["dog", "cat", "mouse"]
p animals.unshift "duck" # => ["duck", "dog", "cat", "mouse"]
p animals.shift # => "duck"
p animals # => ["dog", "cat", "mouse"]

a = [1,2,3]
b = [1,3,5]
c = a
p c.object_id
p a.object_id
a = b & c
p a + b + c