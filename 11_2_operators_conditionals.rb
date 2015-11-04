#2a
count = 0
while count < 10
  puts count+=1
end

#2b. if answer is not equal five
#2c. Should be the same. Yes.
#2d. Works for anything under the sun except 'false'

result = false

unless result
  puts "Hello!"
end

#2e. 

sam_recipes = 11
sam_crepes = false
sally_languages = 6
sally_french = true 
date = false
marry = false

if sam_recipes > 10 && sally_languages > 5
  date = true
end
if sam_crepes == true && sally_french == true
  marry = true
end
puts "Date? #{date}"
puts "Marry? #{marry}"