class Person
  attr_reader :name
  attr_reader :age
  
  def initialize(name,age)
    @name = name
    @age = age
  end
  
  def introduce
    puts("Hi, my name is #{self.name}. I'm #{self.age} years old.")
  end
  
  def year
    @age = self.age + 1
  end
end

person1 = Person.new("Mike", 18)
person2 = Person.new("John", 25)
person3 = Person.new("Minori", 23)

person1.introduce
person2.introduce

person3.introduce

person3.year
person3.introduce
person3.year
person3.year
person3.introduce