module M1
  def method1
    super
    p "m1"
  end
end

class C1
  prepend M1
  def method1
    p "c1"
  end
end

C1.new.method1
# c1
# m1