#メソッドの定義
  #ハッシュごとにプランをまとめ、配列に格納
def summarize_place_price
  [
    { place: "沖縄", price: 10000 },
    { place: "北海道", price: 20000 },
    { place: "九州", price: 15000 }  
  ]
end

def select_plan(travel_plans)
  while true do
    # 配列からハッシュ（プラン）を取り出し→表示
    puts "旅行プランを選択してください"
    travel_plans.each.with_index(1) do |travel_plan,number|
      puts "#{number}:#{travel_plan[:place]}旅行 (¥#{travel_plan[:price]})"
    end

    #旅行プランの取得
    plan_number = gets.to_i 
    # break if 1 <= plan_number && 3 >= plan_number
    break if (1..3).include?(plan_number)

    puts "不正な値です。再度入力してください。"
  end
  plan_number #メソッドの最後の値
end

def disp_selected_plan(travel_plans,plan_number)
  selected_travel_plan = travel_plans[plan_number -1] 
  puts "#{selected_travel_plan[:place]}旅行が選択されました"
  selected_travel_plan  #メソッドの最後の値
end

def select_person_num
  while true do
    puts "参加人数を入力してください！"
    person_number = gets.to_i
    break if 1<= person_number
    puts "不正な値です"
  end
  person_number #メソッドの最後の値
end
  #基本料金の計算
def calculate_price(selected_travel_plan,person_number)
  selected_travel_plan[:price] * person_number 
end
  #割引価格の計算
def calcutlate_discount_price(total_price)
  total_price * 0.9
end

def disp_price(selected_travel_plan,person_number,total_price,discout_total_price)
  puts "#{selected_travel_plan[:place]}旅行で人数は#{person_number}人ですね"
  if person_number < 5
    puts "トータル#{total_price}円になります"
  else
    puts "10%引き価格でトータル#{discout_total_price}円になります"   
  end
end

#メソッド呼び出し
travel_plans = summarize_place_price
plan_number = select_plan(travel_plans)
selected_travel_plan = disp_selected_plan(travel_plans,plan_number)

person_number = select_person_num
total_price = calculate_price(selected_travel_plan,person_number)
discout_total_price = calcutlate_discount_price(total_price)

disp_price(selected_travel_plan,person_number,total_price,discout_total_price)
