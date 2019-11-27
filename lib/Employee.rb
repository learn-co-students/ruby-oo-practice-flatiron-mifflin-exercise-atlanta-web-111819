class Employee
    attr_reader :name, :salary
    attr_accessor :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
       @manager.name
    end    

    def paid_over
      paid = Employee.all.select do |employee|
            employee.salary > 30000
        end
        paid.map do |person|
            person.name
        end
    end

    def find_by_department(department)
     department_man = Manager.all.select do |manager|
        manager.department == department
       end
       department_man = department_man.first
     department_emp = Employee.all.select do |person|
        
        person.manager == department_man
       end
     department_emp[0]
    end

    def tax_bracket
        bracket = Employee.all.select do |employee|
         employee.salary >= (self.salary - 1000) 
        end
        bracket.select do |worker|
          worker.salary <= (self.salary + 1000) 
        end
    end

end
