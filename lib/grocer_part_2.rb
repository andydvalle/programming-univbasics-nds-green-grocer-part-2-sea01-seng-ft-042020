require_relative './part_1_solution.rb'

require 'pry'

def apply_coupons(cart, coupons)

  applied_coupons_cart = []
  
  cart.each do |cart_item|
    coupons.each do |coupons_item|
      #binding.pry
      if cart_item[:item] == coupons_item[:item]
        #binding.pry
        cart_item[:count] -= coupons_item[:num]
        updated_coupons_item = cart_item
        #binding.pry
        updated_coupons_item[:item] += " W/COUPON"
        updated_coupons_item[:price]= (coupons_item[:cost]/coupons_item[:num])
        updated_coupons_item[:count]= coupons_item[:num]
        #binding.pry
        applied_coupons_cart << cart_item
        applied_coupons_cart << updated_coupons_item
      else
        applied_coupons_cart << cart_item
      end
    end
  end
  return applied_coupons_cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
