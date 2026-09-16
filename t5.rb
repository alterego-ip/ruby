print "Введіть натуральне число: "
input = gets.chomp

digits = input.scan(/\d/)

if digits.empty?
  puts "Помилка: не знайдено жодної цифри."
else
  sum = digits.map(&:to_i).sum
  puts "Введене число: #{input}"
  puts "Сума його цифр: #{sum}"
end
