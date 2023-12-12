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

class SalariedEmployee < Employee
    attr_reader :salary

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
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
        pay_for_period = (salary / 365.0) * 14
        formated_pay = format("%0.2f", pay_for_period)
        puts "Pay This period: $#{formated_pay}"
    end
end

class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "wage can't be in negative"
        end
        @hourly_wage =  hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "invalid input"
        end
        @hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formated_pay = format("$%0.2f", pay_for_period)
        puts "Pay this Period: #{formated_pay}"
    end
end

salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Smith"
hourly_employee.hourly_wage = 14.97
hourly_employee.hours_per_week = 30
hourly_employee.print_pay_stub