# https://atcoder.jp/contests/abc132/tasks/abc132_b

n = gets.to_i
p = gets.split.map(&:to_i)

c = 0
0.upto(n - 3){|i|
  c += 1 if [p[i], p[i +1], p[i + 2]].sort[1] == p[i + 1]
}
puts c

