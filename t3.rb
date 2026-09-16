sum = 0

(1...1000).each do |num|
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
end

puts "Сума всіх чисел менше 1000, кратних 3 або 5: #{sum}"
