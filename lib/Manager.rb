class Manager
  attr_accessor :department
  attr_reader :name, :age
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

    def hire_employee(name, salary)
       Employee.new(name, salary, self)
    end

    def all_departments
        Manager.all.map do |manager|
        manager.department
      end
    end

    def average_age
    age_array = Manager.all.map do |manager|
      manager.age
    end
    age_array.inject(0){|sum,x| sum + x }/ Manager.all.count
    end
end
