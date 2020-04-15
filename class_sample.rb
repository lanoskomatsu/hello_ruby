def hello
  p "hello"
  yield
ensure
  p "bye"
end

hello do |i|
  (1..10).each do |j|
    p j
  end
end
