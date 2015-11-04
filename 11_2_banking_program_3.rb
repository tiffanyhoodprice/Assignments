#3.a
bank = []

1.times do
  puts "Enter a first name"
  first_name = gets.chomp
  puts "Enter that person's last name"
  last_name = gets.chomp
  puts "Enter that person's email address"
  email = gets.chomp
  bank << {"first_name" => first_name, "last_name" => last_name, "email" => email, "account" => rand(1000000000..10000000000)} #What about leading zeros
  #alternate method - same meaning/result
  # bank << {first_name: "first_name", last_name: "last_name", email: "email", account: rand(1000000000..10000000000)}
end

p bank

#3.b "account" => rand(10000000000) above

#3.c

bank.each do |person|
  puts "FIRST NAME: #{person[
  "first_name"]}"
  puts "LAST NAME: #{person["last_name"]}"
  puts "EMAIL: #{person["email"]}"
  puts "ACCT \#: #{person["account"]}"
end