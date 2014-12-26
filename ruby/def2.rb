def exec
  f = Dog.new("Fido")
  f.bark_twice
end

class Dog
  def initialize(n)
    @name = n
  end

  def bark_twice
    bark
    bark
  end

  def bark
    puts @name + " says woof woof"
  end

end

exec
