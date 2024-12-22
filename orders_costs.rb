class Restaurant
  def initialize(menu)
    @menu = menu
  end

  # cost = summation of orders * cost in menu
  # orders.keys => will be params for menu
  # sum += menu[key] * orders[key]
  #
  def cost(*orders)
    # your code here
    sum = 0
    orders.each do |order|
      order.each do |key, value|
        sum += @menu[key] * value
      end
    end
    sum
  end
end

restaurant = Restaurant.new({
  "burger" => 5,
  "fries" => 3,
  "coke" => 2
})

puts restaurant.cost({ "burger" => 3, "fries" => 1 }, { "coke" => 2 }) #=> 22