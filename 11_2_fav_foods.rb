puts "Please enter your five favorite foods. Press enter after each item"

foods = []
5.times do
  foods << gets.chomp
end
puts foods

#1.b 
foods.each do |food|
  puts "I love #{food}."
end

#1.c
foods.each_with_index do |food, i| #1.c
  puts "#{i +1}. I love #{food}."
end