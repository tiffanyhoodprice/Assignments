# puts "Please enter your five favorite foods. Press enter after each item"

# foods = []
# 5.times do
#   foods << gets.chomp
# end

# #1.b 
# foods.each do |food|
#   puts "I love #{food}."
# end
# #1.c
# foods.each_with_index do |food, i| #1.c
#   puts "#{i +1}. I love #{food}."
# end

#2a
# count = 0
# while count < 10
#   puts count+=1
# end

#2b. if answer is not equal five
#2c. Should be the same. Yes.
#2d. Works for anything under the sun except 'false'

# result = false

# unless result
#   puts "Hello!"
# end

#2e. 

# sam_recipes = 11
# sam_crepes = false
# sally_languages = 6
# sally_french = true 
# date = false
# marry = false

# if sam_recipes > 10 && sally_languages > 5
#   date = true
# end
# if sam_crepes == true && sally_french == true
#   marry = true
# end
# puts "Date? #{date}"
# puts "Marry? #{marry}"

#3.a
# bank = []

# 5.times do
#   puts "Enter a first name"
#   first_name = gets.chomp
#   puts "Enter that person's last name"
#   last_name = gets.chomp
#   puts "Enter that person's email address"
#   email = gets.chomp
#   bank << {"first_name" => first_name, "last_name" => last_name, "email" => email, "account" => rand(1000000000..10000000000)} #What about leading zeros
# end

# p bank

#3.b "account" => rand(10000000000) above

#3.c

# bank.each do |person|
#   puts "FIRST NAME: #{person[
#   "first_name"]}"
#   puts "LAST NAME: #{person["last_name"]}"
#   puts "EMAIL: #{person["email"]}"
#   puts "ACCT \#: #{person["account"]}"
# end


#4.a & b

# puts "Enter all names. Type 'done' when all names entered."
# pool = []
# while true
#   name = gets.chomp
#   if name.downcase == "done"
#     break
#   end
#     pool << name
# end

# pool.shuffle!

# pool.each_with_index do |person, i|
#   if pool.size.odd? && i == pool.size - 3
#     puts "Group: #{person} #{pool[i + 1]} #{pool[i + 2]}"

#   elsif i.even?
#     puts "Group: #{person} #{pool[i +1]}"
#   end
# end

#5. Bonus
# 5.times do
#   puts "Enter a first name"
#   first_name = gets.chomp
#   puts "Enter that person's last name"
#   last_name = gets.chomp
#   puts "Enter that person's email address"
#   email = gets.chomp
#   bank << {"first_name" => first_name, "last_name" => last_name, "email" => email, "account" => rand(1000000000..10000000000)} #What about leading zeros
# end


# bank.each do |person|
#   puts "FIRST NAME: #{person[
#   "first_name"]}"
#   puts "LAST NAME: #{person["last_name"]}"
#   puts "EMAIL: #{person["email"]}"
#   puts "ACCT \#: #{person["account"]}"
# end

# puts "Enter an account number."
# account = gets.chomp.to_i
# bank.each do |person|
#   if person["account"] == account
#     puts "FIRST NAME: #{person[
#   "first_name"]}"
#     puts "LAST NAME: #{person["last_name"]}"
#     puts "EMAIL: #{person["email"]}"
#   end
# end

#5b.
# bank = []
# 5.times do
#   puts "Enter a first name"
#   first_name = gets.chomp
#   puts "Enter that person's last name"
#   last_name = gets.chomp
#   real_email = false
  
#   until real_email
#     puts "Enter that person's email address"  
#     email = gets.chomp
#     split = email.split("")
#     if email.length >= 7
#       split.each do |char|
#         if char == "@" && email[email.length - 4..email.length - 1] == ".com"
#           real_email = true
#        end
#       end
#     end
#     if real_email == false
#       puts "Enter a real email address please."
#     end
#   end
#   bank << {"first_name" => first_name, "last_name" => last_name, "email" => email, "account" => rand(1000000000..10000000000)} #What about leading zeros
# end

# bank.each do |person|
#   puts "FIRST NAME: #{person["first_name"]}"
#   puts "LAST NAME: #{person["last_name"]}"
#   puts "EMAIL: #{person["email"]}"
#   puts "ACCT \#: #{person["account"]}"
# end

# puts "Enter an account number."
# account = gets.chomp.to_i
# bank.each do |person|
#   if person["account"] == account
#     puts "FIRST NAME: #{person[
#   "first_name"]}"
#     puts "LAST NAME: #{person["last_name"]}"
#     puts "EMAIL: #{person["email"]}"
#   end
# end

#EXTRA
bank = []
5.times do
  puts "Enter a first name"
  first_name = gets.chomp
  puts "Enter that person's last name"
  last_name = gets.chomp
  real_email = false
  
  until real_email
    puts "Enter that person's email address"  
    email = gets.chomp
    split = email.split("")
    if email.length >= 7
      split.each do |char|
        if char == "@" && email[email.length - 4..email.length - 1] == ".com"
          real_email = true
       end
      end
    end
    if real_email == false
      puts "Enter a real email address please."
    end
  end
  while true
  acct = "#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}" #string interpolation to create random number that allows for leading zeros

  bank << {"first_name" => first_name, "last_name" => last_name, "email" => email, "account" => acct} #What about leading zeros
end

bank.each do |person|
  puts "FIRST NAME: #{person["first_name"]}"
  puts "LAST NAME: #{person["last_name"]}"
  puts "EMAIL: #{person["email"]}"
  puts "ACCT \#: #{person["account"]}"
end

puts "Enter an account number."
account = gets.chomp
bank.each do |person|
  if person["account"] == account
    puts "FIRST NAME: #{person[
  "first_name"]}"
    puts "LAST NAME: #{person["last_name"]}"
    puts "EMAIL: #{person["email"]}"
  end
end

#CORRECTED TO MAKE SURE EACH ID IS UNIQUE
bank = []
1.times do
 puts "enter a first name"
 fn = gets.chomp
 puts "enter a last name"
 ln = gets.chomp
 real_email = false
 until real_email
   puts "enter an email"
   email = gets.chomp
   split = email.split("")
   if email.length >= 7
     split.each do |char|
       if char == "@" && email[email.length - 4..email.length - 1] == ".com"
         real_email = true
       end
     end
   end
   if real_email == false
     puts "enter a real email please"
   end
 end
 unique_acct = false
 until unique_acct
   acct = "#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}#{rand(10)}"
   if bank.length != 0
     bank.each do |person|
       unique_acct = true
       if person[:account] == acct
         unique_acct = false
         break
       end
     end
   else
     unique_acct = true
   end
 end
 bank << {fn:      fn,
          ln:      ln,
          email:   email,
          account: acct}
end

bank.each do |person|
 puts "FIRST NAME: #{person[:fn]}"
 puts "LAST NAME:  #{person[:ln]}"
 puts "EMAIL:      #{person[:email]}"
 puts "ACCT \#:     #{person[:account]}"
end

puts "Please Enter An Account Number"
account = gets.chomp
bank.each do |person|
 if person[:account] == account
   puts "FIRST NAME: #{person[:fn]}"
   puts "LAST NAME:  #{person[:ln]}"
   puts "EMAIL:      #{person[:email]}"
 end
end