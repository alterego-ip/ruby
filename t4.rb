max_palindrome = 0
factors = []

999.downto(100) do |i|
  999.downto(i) do |j|
    product = i * j
    break if product <= max_palindrome

    str_product = product.to_s
    if str_product == str_product.reverse
      max_palindrome = product
      factors = [i, j]
    end
  end
end

puts "Найбільший паліндром: #{max_palindrome} = #{factors[0]} * #{factors[1]}"
