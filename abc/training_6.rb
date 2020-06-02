n = gets.to_i
a = gets.split(" ").map(&:to_i).sort.reverse

alice = []
bob = []

a.each_with_index do |i, k|
  if k % 2 == 0
    alice.push(i)
  else
    bob.push(i)
  end
end

p alice.sum - bob.sum
