class Employee
    attr_reader :name, :salary

    def initialize
        @name = "Anonymous"
        @salary = 0.0
    end

    def name=(name)
        if name == "" 
            raise "Sorry the name can't be blank"
        else
            @name = name
        end
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} is invalid"
        else
            @salary = salary
        end
    end

    def print_pay_stub
        puts "Name: #{@name}"
        pay_for_period = (@salary / 356.0) * 14 #remove Fixnum from the salary by dividing with a float operand
        result = format("%0.2f", pay_for_period)
        puts "Pay This period: $#{result}"
    end
end

amy = Employee.new
# amy.name = "Amy"
# amy.salary = 12000
amy.print_pay_stub