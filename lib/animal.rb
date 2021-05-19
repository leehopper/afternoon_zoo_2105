class Animal
  attr_reader :kind, :age_weeks

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight
    @age_weeks = age
  end

  def weight
    "#{@weight} pounds"
  end

  def age
    "#{@age_weeks} weeks"
  end

  def age_in_days
    @age_weeks * 7
  end

  def feed!(food)
    @weight += food
  end
end
