name = "Данило Бурмей"
puts "Привіт, #{name}!"

matches = (1..1000).map do |n|
  sq = n * n
  sq.to_s.end_with?("396") ? [n, sq] : nil
end.compact

matches.each do |n, sq|
  puts "#{n}^2 = #{sq}"
end

if matches.empty?
  puts "Чисел <= 1000, квадрат яких закінчується на 396, не знайдено."
end
