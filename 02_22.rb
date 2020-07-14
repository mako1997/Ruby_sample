require_relative "methods"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

display_travel_plans(plans)
selected_plan = choose_travel_plan(plans)
people_num = choose_people_number
display_total_fee(people_num, selected_plan)
