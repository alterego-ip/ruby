name = "Данило Бурмей"
puts "Привіт, #{name}!"

print "Введіть натуральне число: "
input = gets.chomp
digits = input.scan(/\d/).map(&:to_i)

if digits.empty?
  puts "Помилка: не введено жодної цифри."
else
  max_digit = digits.max
  count = digits.count(max_digit)
  puts "Максимальна цифра: #{max_digit}"
  puts "Кількість входжень: #{count}"
end
