lines = []

File.open("votes.txt") do |file|
    lines = file.readlines
end

votes = {}

lines.each do |line|
    name = line.chomp
    name.upcase!
    if votes[name]
        votes[name] += 1
    else
        votes[name] = 1
    end
end

votes.each do |name, count|
    puts "#{name}: #{count}"
end

# class Candidate
#     attr_accessor :name, :age, :occupation, :hobby, :birthplace

#     def initialize(name, age, occupation, hobby, birthplace)
#         self.name = name
#         self.age = age
#         self.occupation = occupation
#         self.hobby = hobby
#         self.birthplace = birthplace
#     end
# end

# def print_summary(candidate)
#     puts "Candidate: #{candidate.name}"
#     puts "Age: #{candidate.age}"
#     puts "Occupation: #{candidate.occupation}"
#     puts "Hobby: #{candidate.hobby}"
#     puts "Birthplace: #{candidate.birthplace}"
# end

# candidate = Candidate.new("Carl Barnes", 49, "Attorney", nil, "maimi")
# print_summary(candidate)
