a = "foo"
p a.object_id
p a.__id__

b = "foo"

p a.eql? b # => true
p a.equal? b # => false

# methods have all access filter
a.methods
a.private_methods
a.protected_methods
a.public_methods
a.singleton_methods

# copy object. all of shallow copy.
# dup < clone, clone duplicate frozen state and singleton_methods.
b = a.dup
b = a.clone
