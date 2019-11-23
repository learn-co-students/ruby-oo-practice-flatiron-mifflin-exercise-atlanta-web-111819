require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


schmo = Manager.new('Joe Schmo', 45, 'accounting')
odonnell = Manager.new("Jill O'Donnell", 37, 'marketing')
lensfield = Manager.new('Mac Lensfield', 52, 'IT')
schmo.hire_employee('Andre de Renjure', 68000)
schmo.hire_employee('Søren Wulfschield', 70000)
schmo.hire_employee('Alfred Schweiß', 55000)
odonnell.hire_employee('Shannon Fitzpatrick', 57000)
odonnell.hire_employee('Ada Macphearson', 59000)
lensfield.hire_employee('John Whitmer', 42000)
lensfield.hire_employee('William Shelmer', 39000)
lensfield.hire_employee('Anna Tarenbridge', 40000)


binding.pry
puts "done"
