
#== check ruby's conditional branching
# this is RDoc
# output. ruby is all true(True Class) except for nil and false
# => 0
# => 1
# => 1
def main
  if 0
    p 0
  end

  if "" then
    p 1
  end

  if false
    p 2
  end

  if nil
    p 3
  end

  scope
end

#== if has not scope for local variables
# NOTE: it's for literal too
# print 1
def scope
  if true
    bar = 1
  end
  p bar
end

main