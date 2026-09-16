name = "Данило Бурмей"
puts "Привіт, #{name}!"

scored   = [2, 1, 0, 3, 2, 4, 1, 0, 2, 3, 1, 2, 0, 1, 3, 2, 1, 4, 0, 2]
conceded = [1, 1, 2, 0, 2, 1, 3, 0, 1, 2, 2, 1, 1, 0, 3, 1, 2, 2, 1, 0]

results = scored.zip(conceded).map.with_index(1) do |(goals_for, goals_against), index|
  outcome = if goals_for > goals_against
              "виграш"
            elsif goals_for < goals_against
              "програш"
            else
              "нічия"
            end
  "Гра #{index}: #{goals_for}:#{goals_against} — #{outcome}"
end

puts results
