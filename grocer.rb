require "pry"

def consolidate_cart(cart)
  # iterate over each item in cart
  updated_cart = {}
  
  cart.each do |item|
    # group items and get total count
    item_name = item.keys[0]
  
    
     
    if updated_cart[item_name] == nil
      updated_cart[item_name] = item[item_name]
      updated_cart[item_name][:count] = 1
      
    else 
      updated_cart[item_name][:count] += 1
   
    end
  end
  updated_cart
end



def apply_coupons(cart,coupons)
  
end




























# def consolidate_cart(cart)
#   final_hash = {}
  
#   cart.each do |element_hash|
#     element_name = element_hash.keys[0]
  
    
#     if final_hash.has_key?(element_name)
#       final_hash[element_name][:count] += 1
      
#     else
#       final_hash[element_name] = {
#         count: 1,
#         price: element_hash[element_name][:price],
#         clearance: element_hash[element_name][:clearance]
#       }
      
#       end
# end
# final_hash
# end




# def apply_coupons(cart, coupons)
  
#   coupons.each do |coupon|
#     item = coupon[:item]
#     coupon_item = "#{item} W/COUPON"
    
#   if  cart[item]
#       if cart[item][:count] >= coupon[:num] && !cart[coupon_item]
#           cart[coupon_item] = {price: coupon[:cost] / coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]}
#               cart[item][:count] -= coupon[:num]
#   elsif cart[item][:count] >= coupon[:num] && cart[coupon_item]
#       cart[coupon_item][:count] += coupon[:num]
#       cart[item][:count] -= coupon[:num]
#     end
#   end   
#   end
#   cart
# end





# def apply_clearance(cart)
#   cart.each do |product_name, stats|
    
#     stats[:price] -= stats[:price] * 0.2 if stats[:clearance] == true
    
#   end
#   cart
# end










# def checkout(array, coupons)
#   hash_cart = consolidate_cart(array)
#   applied_coupons = apply_coupons(hash_cart, coupons)
#   applied_discount =apply_clearance(applied_coupons)
  
#   total = applied_discount.reduce(0) {|acc, (key, value)| acc += value[:price] * value[:count]}
  
#   #ternary expression
#   # ? = if, : = else
  
#   total > 100 ? total * 0.9 : total
  
# end








