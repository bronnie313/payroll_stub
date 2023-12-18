lines = []

File.open("reviews.txt") do |review_file| 
    lines = review_file.readlines
end

# relevant_lines = []

# lines.each do |line|
#     if line.include?("Truncated")
#         relevant_lines << line
#     end
# end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = relevant_lines.reject { |line| line.include?("--") }
def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    if index && words[index + 1]
        return words[index + 1]
    else
        return nil
    end
end

# adjectives = []
# reviews.each do |review| 
#     adjectives << find_adjective(review)
# end

adjectives = reviews.map do  |review| 
    adjective = find_adjective(review)
    if adjective
        "'#{adjective.capitalize}'"
    end
end

puts "The critics agree, Truncated is:"
puts adjectives
