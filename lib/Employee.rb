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

    def tax_bracket
        @@all.select do |employee| 
            employee.salary <= self.salary+1000 and employee.salary >= self.salary-1000
        end
    end

    def self.paid_over(amount)
        self.all.select {|employee| employee.salary > amount}
    end

end
