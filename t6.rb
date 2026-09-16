name = "Данило Бурмей"
puts "Привіт, #{name}!"

target = 15_485_863
limit = Math.sqrt(target)

# Спосіб 1: ітератор each
is_prime_each = true
(2..limit).each do |d|
  if target % d == 0
    is_prime_each = false
    break
  end
end

# Спосіб 2: метод any?
has_divisor = (2..limit).any? { |d| target % d == 0 }
is_prime_any = !has_divisor

puts "Спосіб 1 (each): Число #{target} #{is_prime_each ? 'просте' : 'складене'}"
puts "Спосіб 2 (any?): Число #{target} #{is_prime_any ? 'просте' : 'складене'}"
