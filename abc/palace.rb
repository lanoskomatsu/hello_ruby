n = gets.to_i
t, a = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)

tmp = h.map{|x| (a - t - x * 0.006).abs }
puts tmp.index(tmp.min) + 1
