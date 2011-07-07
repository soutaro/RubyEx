# -*- coding: utf-8 -*-
PAPER = 0
SCISORS = 1
STONE = 2
WIN={
  [PAPER,STONE] => true,
  [STONE,SCISORS] => true,
  [SCISORS,PAPER] => true,
}
HANDS = ["パー","チョキ","グー"]
  puts("パーは0、チョキは１、グーは2を入れてください")
  choice = gets()
  unless choice
    puts("Exit")
    exit
  end
  player = Integer(choice)
end

computer = rand(3)
puts("computer: #{computer}")
if player == computer
  puts("even")
else
  if player == PAPER && computer == STONE ||
    player == STONE && computer == SCISORS ||
    player == SCISORS && computer == PAPER
    puts("win")
  else
    puts("lose")
  end
end



STONES = ["ガーネット", "アメジスト", "アクアマリン", "ダイヤモンド", "エメラルド", "パール", "ルビー", "ペリドット", "サファイア", "オパール", "トパーズ", "ターコイズ"]

MONTH_STONE = {
  "January" => "ガーネット", "February" => "アメジスト", "March" => "アクアマリン", "April" => "ダイヤモンド",
  "May" => "エメラルド", "June" => "パール", "July" => "ルビー", "August" => "ペリドット", "September" => "サファイア",
  "October" => "オパール", "November" => "トパーズ", "December" => "ターコイズ"
}

stone = STONES[rand(12)]
puts("#{stone}の誕生月を英語で入力してください")
s = gets()
month = s[0..-2]
if MONTH_STONE[month]
  if MONTH_STONE[month] == stone
    puts("当たりです！")
  else
    puts("#{month}の誕生石は#{MONTH_STONE[month]}ですね")
  end
else
  puts("#{month}って月ですか？")
end