# https://atcoder.jp/contests/abc132/tasks/abc132_a

input = ARGV[0]

if input.split("").uniq.count == 2
  p "Yes"
else
  p "No"
end

