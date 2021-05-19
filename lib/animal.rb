class Animal
  attr_reader :kind, :weight_pounds, :age_weeks

  def initialize(kind, weight, age)
    @kind = kind
    @weight_pounds = weight
    @age_weeks = age
  end

  def weight
    "#{@weight_pounds} pounds"
  end

  def age
    "#{@age_weeks} weeks"
  end

  def age_in_days
    @age_weeks * 7
  end

  def feed!(food)
    @weight_pounds += food
  end
end
