MAN_BONUS=0.30
DEV_BONUS=0.20 

class Employee
  # attr_accessor :name, :base_salary
  def initialize(name,base_salary=125000)
    @name,@base_salary=name,base_salary
  end
  def role
    return 'Employee'
  end
  def calSalary
    return @base_salary
  end
end

class Manager<Employee
  def role
    return 'Manager'
  end
  def calSalary
    bonus= @base_salary*MAN_BONUS
  return @base_salary+bonus.round
  end
end

class Developer<Employee
 Array=[] 
 def role
    return 'Developer'
  end
  def calSalary
    bonus=DEV_BONUS*@base_salary
   return @base_salary+bonus.round
  end

emp1=Employee.new("TANU")
# emp1.name="Tanu"
# emp1.base_salary=1000000
emp2=Manager.new("YASH")
# emp2.name="Vicky"
# emp2.base_salary=1000000
emp3=Developer.new("VICKY")
# emp3.name="Yash"
# emp3.base_salary=1000000
emp4=Developer.new("BATMAN")
# emp4.name="Nandu"
# emp4.base_salary=1000000
Array.push(emp1,emp2,emp3,emp4)
def self.payroll(array)
p array
array.each do |emp| 
  puts "Role is #{emp.role} and there salary is #{emp.calSalary}"
end
end
Developer.payroll(Array)
end



