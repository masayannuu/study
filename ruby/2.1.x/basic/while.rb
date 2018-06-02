# this also applies to the until expression

# at first print 0
i = 0
begin
  p i
  i += 1
end while(1..4) === i

# at fisrt pring 1
i = 0
p i += 1 while(0..4) === i