k, s = gets.split(" ").map(&:to_i)

cnt = 0
(0..k).each do |x|
  (0..k).each do |y|
    (0..k).each do |z|
      cnt += 1 if x + y + z == s
    end
  end
end

p cnt