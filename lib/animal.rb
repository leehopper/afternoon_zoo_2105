class Animal
  attr_reader :kind, :weight, :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight
    @age = age
  end
end
