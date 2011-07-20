a = ["cat","cat","dog","cat","bird","dog","cat"]
sum = 0

puts a.count {|x| x == "cat"}
puts a.count {|x| x == "dog"}
puts a.count {|x| x == "bird"}
    