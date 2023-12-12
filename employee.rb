class Employee
    attr_reader :name, :salary

    def initialize(name = "Anonymous")
        self.name = name 
    end

    def name=(name)
        if name == "" 
            raise "Sorry the name can't be blank"
        else
            @name = name
        end
    end

    def print_name
        puts "Name: #{name}"
    end
end

def SalariedEmployee < Employee
end

def HourlyEmployee < Employee
end
