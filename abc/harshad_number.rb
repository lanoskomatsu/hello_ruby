n = gets.to_i

x = n.to_s.split("").map(&:to_i).sum

if n % x == 0
  p "Yes"
else
  p "No"
end
