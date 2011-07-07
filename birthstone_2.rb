# -*- coding: utf-8 -*-

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