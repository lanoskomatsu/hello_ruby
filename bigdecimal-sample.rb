require "bigdecimal"
require "bigdecimal/util"

sum = 0

for i in 1..10000
  sum += 0.0001
end

p sum

sum = 0

for i in 1..10000
  sum += 0.0001.to_d
end

p sum.to_f

