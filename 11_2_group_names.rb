puts "Enter all names. Type 'done' when all names entered."
pool = []
while true
  name = gets.chomp
  if name.downcase == "done"
    break
  #same as break if name.downcase == "done" but wouldn't need 'end'
  end
    pool << name
end

pool.shuffle!

pool.each_with_index do |person, i|
  if pool.size.odd? && i == pool.size - 3
    puts "Group: #{person} #{pool[i + 1]} #{pool[i + 2]}"

  elsif i.even?
    puts "Group: #{person} #{pool[i +1]}"
  end
end

#CONCATENATED & edited with info from Mark's notes
# puts "Enter all names. Type 'done' when all names entered."
# pool = []
# while true
#   name = gets.chomp
#   break if name.downcase == "done"
#   pool << name
# end

# pool.shuffle!

# until pool.length == 0
#   if pool.length == 3
#     group = pool.pop(3)
#   else
#     group = pool.pop(2)
#   end
#   puts "Group: #{group.join(", ")}"
# end