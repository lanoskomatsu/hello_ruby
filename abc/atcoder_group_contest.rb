n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse

p n, a

x = 0
n.times do |i|
  p "i: #{i}, a: #{a[i * 2 + 1]}"
  x += a[i * 2 + 1]
end

p x