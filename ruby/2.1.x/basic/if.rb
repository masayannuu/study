
#== check ruby's conditional branching
# this is RDoc
# output. ruby is all true(True Class) except for nil and false
# => 0
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
end

main