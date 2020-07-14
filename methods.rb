# 旅行プランの表示  display_travel_plans
# 旅行プランの選択  choose_travel_plan
# 人数の入力を要求  choose_people_number
# 選択したプランの合計料金  display_total_fee

# コードを追記
def display_travel_plans(plans)
  puts "旅行プランを選択してください"

  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (¥#{plan[:price]})"
  end
end

def choose_travel_plan(plans)
  print "プランを選択 > "
  plan_num = gets.to_i
  selected_plan = plans[plan_num - 1]
  "#{selected_plan[:place]}旅行ですね、何人で行きますか？"
  selected_plan
end

def choose_people_number
  print "人数を入力 > "
  gets.to_i
end

def display_total_fee(people_num, selected_plan)
  if people_num >= 5
    puts "5人以上なので10%割引となります"
    puts "合計金額: ¥#{(selected_plan[:price] * people_num * 0.9).floor}"
  else
    puts "合計金額: ¥#{selected_plan[:price] * people_num}"
  end
end
