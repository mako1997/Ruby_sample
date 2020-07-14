require "pry"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]
# コードを追記
puts "旅行プランを選択してください"

plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:place]}旅行 (¥#{plan[:price]})"
end

print "プランを選択 > "
plan_num = gets.to_i
selected_plan = plans[plan_num - 1]
puts "#{selected_plan[:place]}旅行ですね、何人で行きますか？"

print "人数を入力 > "
people_num = gets.to_i
if people_num >= 5
  puts "5人以上なので10%割引となります"
  puts "合計金額: ¥#{(selected_plan[:price] * people_num * 0.9).floor}"
else
  puts "合計金額: ¥#{selected_plan[:price] * people_num}"
end
