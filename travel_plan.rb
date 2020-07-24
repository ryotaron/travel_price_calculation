travel_plans = ["沖縄旅行（¥10,000）","北海道旅行（¥20,000）", "九州旅行（¥15,000）"]
plan_prices = [10000,20000,15000]

travel_plans.each.with_index(1) do |plan,i|
  puts "#{i}:#{plan} "
end

while true do
  puts "番号入力して下さい！"
  plan_number = gets.to_i
  
  case plan_number
    when 1 then
      puts "#{travel_plans[0]} を選択しました"
      break
    
    when 2 then
      puts "#{travel_plans[1]} を選択しました"
      break
    
    when 3 then
      puts "#{travel_plans[2]} を選択しました"
      break
      
    else
      puts "正しくない数字が入力されました、再度入力して下さい"
  end
end

while true do
  puts "何人で行きますか？"
  travel_person_number = gets.to_i

  puts "人数は  #{travel_person_number}人ですね"

  travel_price = plan_prices[plan_number -1]

  if travel_person_number <= 0
    puts "不正な値です再度入力して下さい"

  elsif travel_person_number < 5
    total_travel_price = travel_price * travel_person_number
    puts "トータル#{total_travel_price}円ですね"
    break

  else 
    total_travel_price = travel_price * travel_person_number
    discount_total_price = total_travel_price * 0.9
    puts "５人以上なので、１０%引き　トータル#{discount_total_price}円です"
    break
    
  end
end
