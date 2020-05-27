n = gets.to_i

x = "No"
(0..100).each do |i|
  (0..100).each do |j|
    x = "Yes" if i * 4 + j * 7 == n
  end
end

p x
