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
    attr_reader :salary

    def initialize(salary = 0.0)
        self.salary = salary
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of $#{salary} is not valid"
        end
        @salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365) * 14
        formated_pay = format("0.2f", pay_for_period)
        puts "Pay This period: $#{formated_pay}"
    end
end

def HourlyEmployee < Employee
end
