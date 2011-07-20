p [2,4,6].inject(0) {|sum, x| sum + x}

# p [2,4,6,1,0].inject(0) {|max, x| x < max}



def map(a)
  b = []
  for x in a
    y = yield(x)
    b << y
  end
  b
end

p(map([1,2,3,4,5]) {|x| x * 2 })
p(map([1,2,3,4,5]) {|x| x * 3 })

a = ([1,2,3,4,5])
p a.map{|x| x * 2}



def select(a)
  b = []
  for x in a
    y = yield(x)
    if y
      b << x
    end
  end
  b
end
p (select([2,4,5,8,1,10]){|x| x % 2 == 0 && x < 7})

a = ([2,4,5,8,1,10])
p a.select{|x| x % 2 == 0 && x < 7}


def product(a)
  a.inject(1){|x, y| x * y}
end

p product([2,4,6])
p product(Array.new(10){|x| x})

def map(a)
  a.inject([]) {|acc, x|
    y = yield(x)
    acc << y
    acc
  }
end
p(map([1,2,3,4,5]) {|x| x * 2 })
p(map([1,2,3,4,5]) {|x| x * 3 })
p(map([]) {|x| x * 3 })
p(map([0,2,4,6,8]) {|x| x * 3 })
p(map([4]) {|x| x * 3 })