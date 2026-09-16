puts "Hello, world! (Привіт, ясен світ!)"
puts "Hello, world! Данило Бурмей"

first_name = "Данило"
last_name = "Бурмей"
puts "Hello, world! " + first_name + " " + last_name

print "Введіть ваше ім'я: "
user_first_name = gets.chomp
print "Введіть ваше прізвище: "
user_last_name = gets.chomp
puts "Hello, world! " + user_first_name + " " + user_last_name

puts "Привіт, ясен світ! Мене звати #{user_first_name} #{user_last_name}."
puts "Форматування імені: #{user_first_name.capitalize} #{user_last_name.capitalize}"

greeting = "Привіт, ясен світ!"
puts greeting.upcase
