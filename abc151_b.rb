n,k,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).inject(:+)

ans = [0, (m * n) - a].max
ans = -1 if k < ans

puts ans

