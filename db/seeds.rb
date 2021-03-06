
require "csv"

cuisines_csv = CSV.readlines("db/cuisines.csv")
cuisines_csv.shift
cuisines_csv.each do |row|
  Cuisine.create(genre: row[1], name: row[2], calorie: row[3])
end

foodstuffs_csv = CSV.readlines("db/foodstuffs.csv")
foodstuffs_csv.shift
foodstuffs_csv.each do |row|
  Foodstuff.create(food: row[1], amount: row[2], cuisine_id: row[3])
end