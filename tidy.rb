require "csv"

# data = CSV.foreach("data/raw/mother_survey.csv") do |row|
#   puts row
#   row.each do |line|
#     # puts line
#     # puts "---"
#   end
# end

# puts data

# 2 different units of observation
# mothers
# children

# ========

# avg age of children

csv_text = File.read("data/tidy/child.csv")
csv = CSV.parse(csv_text, :headers => true)
sum_age = 0
total_children = csv.length
csv.each do |row|
  sum_age += row.to_hash["age"].to_i
end

puts "Average child age: #{sum_age/total_children}"
# avg age of mother

csv_text = File.read("data/tidy/mother.csv")
csv = CSV.parse(csv_text, :headers => true)
sum_age = 0
total_mother = csv.length
csv.each do |row|
  sum_age += row.to_hash["age"].to_i
end

puts "Average mother age: #{sum_age/total_mother}"
