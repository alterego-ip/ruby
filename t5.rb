name = "Данило Бурмей"
puts "Привіт, #{name}!"

result = (1000..9999).find do |num|
  last_digit = num % 10
  remaining_digits = num / 10
  new_num = (last_digit.to_s + remaining_digits.to_s).to_i

  last_digit != 0 && (num - new_num == 27)
end

if result
  new_val = (result % 10).to_s + (result / 10).to_s
  puts "Знайдене число: #{result} (після перестановки: #{new_val}, різниця: #{result - new_val.to_i})"
else
  puts "Число не знайдено"
end
