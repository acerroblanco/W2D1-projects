class Employee
  
  attr_reader :title, :salary, :boss
  
  def initialize(title, salary, boss)
    @title = title
    @salary = salary 
    @boss = boss
    @employees = nil
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end 
end 

class Manager < Employee
  
  def initialize(employees)
    super(title, salary, boss)
    @employees = employees
  end 
  
  def bonus(multiplier)
    
    return @salary if @employees == nil
    total = 0
    
    @employees.each do |employee|
      total += employee.bonus(multiplier)
    end
    total * multiplier
  end
  
end 