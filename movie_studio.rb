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

puts relevant_lines


