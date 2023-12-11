class Employee
    attr_reader :name, :salary

    def name=(name)
        if value == "" 
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
        puts "Employee name: #{@name}"
        pay_for_period = (@salary / 356) * 14
        puts "Pay This period : #{pay_for_period}"
    end
end