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

f = Dog.new("Fido")

a = f


d = Dog.new("Droopy")

a = d


f = a

f.bark

x = f
