target_number = 600851475143
n = target_number
factor = 2

while factor * factor <= n
  if n % factor == 0
    n /= factor
  else
    factor += 1
  end
end

puts "Початкове число: #{target_number}"
puts "Найбільший простий множник: #{n}"
