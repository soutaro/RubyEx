# -*- coding: utf-8 -*-
even, odd = Array.new(10){ rand(100) }.partition{|x| x.even? }

puts("元の配列：#{even+odd}")
puts("偶数の配列：#{even}")
puts("奇数の配列：#{odd}")