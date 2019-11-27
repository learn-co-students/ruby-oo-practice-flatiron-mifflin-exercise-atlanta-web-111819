require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

###### Mangager #######

mike = Manager.new("Mike", 36, "Shoes")
steven = Manager.new("James", 45, "Appliances")
terrance = Manager.new("Terrance", 28, "Electronics")


######Employees####

kevin = Employee.new("Kevin", 35000, terrance)
doug = Employee.new("Doug", 33000, steven)
navarre = Employee.new("Navarre", 26000, mike)
jasmine = Employee.new("Jasmine", 34500, mike)
isaiah = Employee.new("Isaiah", 35000, steven)
kyle = Employee.new("Kyle", 45000, terrance)
victoria = Employee.new("Victoria", 36000, mike)
brian = Employee.new("Brian", 30000, terrance)

binding.pry
puts "done"
