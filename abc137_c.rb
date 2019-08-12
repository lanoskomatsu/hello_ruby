n = gets.to_i
h = Hash.new(0)
n.times do
  input = gets.chomp.chars.sort.join
  h[input] += 1
end

ans = 0
h.each{|_k, v|
  next if v == 1
  ans += v * (v - 1) / 2
}

p ans
