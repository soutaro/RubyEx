# -*- coding: utf-8 -*-
animals = {}

animals["犬"] = "わんわん"
animals["猫"] = "ニャーニャー"
animals["牛"] = "モーモー"
animals["狸"] = "ポンポコ"
animals["蛇"] = nil

while true
  puts("動物を漢字で指定してください（中止は空打ち）")
  key = gets.chomp
  if key == ""
    break
  end
  value = animals[key]
  if animals.has_key?(key)
    unless value
      puts("#{key}は鳴きません")
    else
      puts("#{key}の鳴き声は#{value}です")
    end
  else
    while true
      puts("#{key}は知らない動物です。登録しますか？(Y/N)")
      yn = gets.chomp
      if yn == "y" || yn == "Y"
        puts("#{key}の鳴き声を入力してください")
        value = gets.chomp
        value = nil if value == ""
        animals[key] = value
        break
      elsif yn == "n" || yn == "N"
        break
      end
    end
  end
end