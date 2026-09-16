name = "Данило Бурмей"
puts "Привіт, #{name}!"

a = 1
b = 2
sum = 0

while b <= 4_000_000
  sum += b if b.even?
  a, b = b, a + b
end

puts "Сума парних членів Фібоначчі <= 4 000 000: #{sum}"
