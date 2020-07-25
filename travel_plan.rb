#ハッシュごとにプランをまとめ、配列に格納
travel_plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }  
]

while true do
  # 配列からハッシュ（プラン）を取り出す
  puts "旅行プランを選択してください"
  travel_plans.each.with_index(1) do |travel_plan,number|
    puts "#{number}:#{travel_plan[:place]}旅行 (¥#{travel_plan[:price]})"
  end
  #旅行プランの選択入力
  plan_number = gets.to_i 
  case plan_number
    when 1..3
      selected_travel_plan = travel_plans[plan_number -1] 
      puts "#{selected_travel_plan[:place]}旅行が選択されました"
      break 
    else
      puts "不正な値です。再度入力してください。"
  end
end
 
 # 参加人数の入力
while true do 
  puts "参加人数を入力してください！"
  person_number = gets.to_i

  total_price = selected_travel_plan[:price] * person_number 
  discout_total_price = total_price * 0.9

  fixed_disp = "#{selected_travel_plan[:place]}旅行で人数は#{person_number}人ですね"

  if person_number <= 0
    puts "不正な値です"

  elsif person_number <= 5
    
    puts fixed_disp
    puts "トータル#{total_price}円になります"
    break

  else person_number > 5
    
    puts fixed_disp
    puts "10%引き価格で #{discout_total_price}円になります"   
    break

  end
end

