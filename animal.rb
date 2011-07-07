# -*- coding: utf-8 -*-
animals = {}

animals["犬"] = "わんわん"
animals["猫"] = "ニャーニャー"
animals["牛"] = "モーモー"
animals["狸"] = "ポンポコ"

while true
  puts("動物を漢字で指定してください（中止は空打ち）")
  s = gets()
  key = s[0..-2]
  if key == ""
    break
  end
  value = animals[key]
  if value
    puts("#{key}の鳴き声は#{value}です")
  else
    while true
      puts("#{key}は知らない動物です。登録しますか？(Y/N)")
      yn = gets()
      yn = yn[0..-2]
      if yn == "y" || yn == "Y"
        puts("#{key}の鳴き声を入力してください")
        value = gets()
        animals[key] = value[0..-2]
        break
      elsif yn == "n" || yn == "N"
        break
      end
    end
  end
end