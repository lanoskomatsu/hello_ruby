n = gets.to_i

d = []
n.times do
  x = gets.to_i
  d.push(x)
end

p d.uniq.count