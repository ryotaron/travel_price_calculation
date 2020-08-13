require "./methods"
#メソッド呼び出し
travel_plans = summarize_plan
plan_number = select_plan(travel_plans)

selected_plan = disp_selected_plan(travel_plans, plan_number)
person_number = select_person_num

calculate_price(selected_plan, person_number)
calcutlate_discount_price(selected_plan, person_number)

disp_price(selected_plan, person_number)
