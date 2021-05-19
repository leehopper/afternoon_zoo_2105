class Animal
  attr_reader :kind, :weight, :age, :age_in_days

  def initialize(kind, weight, age)
    @kind = kind
    @weight = "#{weight} pounds"
    @age = "#{age} weeks"
    @age_in_days = age * 7
  end
end
