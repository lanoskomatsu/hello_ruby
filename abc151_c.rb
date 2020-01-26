n,m = gets.split.map(&:to_i)
cnt = [0] * (n+1)
flgs = [false] * (n+1)
ac = 0
m.times do 
  t,s = gets.split
  t = t.to_i
  if s == "AC"
    ac += 1 if flgs[t] == false
    flgs[t] = true
  elsif s == "WA"
    cnt[t] += 1 if flgs[t] == false
  end
end
 
wa = 0
(1..n).each do |i|
  if flgs[i]
    wa += cnt[i]
  end
end
puts "#{ac} #{wa}"

