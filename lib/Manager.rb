class Manager

    attr_reader :name
    attr_accessor :department, :age

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department

        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        departments = self.all.map {|manager| manager.department}
        departments.uniq
    end

    def self.average_age
        managers = self.all
        total = managers.reduce(0) {|total, manager| total += manager.age}
        total / managers.count
    end

end
