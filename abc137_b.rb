input = gets.split(" ").map(&:to_i)

k = input[0]
x = input[1]

ary = [x]

p "---------"

i = 0
(k - 1).times do
  i += 1
  p "i: #{i}"
  j = x + i
  p "j: #{j}"
  ary.push(j)
  p "ary: #{ary}"
end

i = 0
(k - 1).times do
  i -= 1
  p "i: #{i}"
  j = x + i
  p "j: #{j}"
  ary.unshift(j)
  p "ary: #{ary}"
end

p ary

