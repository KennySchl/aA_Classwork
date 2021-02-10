class Employee 
  attr_reader :title, :salary
  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    self.boss = boss 
  end

  def boss=(node)
    @boss = node
    if node != nil 
      node.add_employee(self)
    end
  end

  def bonus(multiplier)
    if @title != 'Manager'
      bonus = @salary * multiplier
    # else
    #   self.salary_search * multiplier
    end
  end
end

class Manager < Employee

  attr_reader :employees, :salary, :title, :name, :boss
  
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end
  
  def bonus(multiplier)
    self.salary_search * multiplier
  end


  def add_employee(employee)
    self.employees << employee
  end

  def salary_search
    funding = 0
    self.employees.each do |employee|
      if employee.title == "Manager"
        funding += employee.salary + employee.salary_search
      else
        funding += employee.salary
      end
    end
    funding

  end


end

ned = Manager.new('Ned', 'Manager', 1000000, nil)
darren = Manager.new('Darren', 'Manager', 78000, ned)
shawna = Employee.new('Shawna', 'Employee', 12000, darren)
david = Employee.new('David', 'Employee', 10000, darren)


# puts shawna.bonus(2)
p ned.employees

puts ned.bonus(5)