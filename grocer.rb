require 'pry'

def consolidate_cart(cart)
  ans = {}
  cart.each {|x|
    x.each {|x,y|
      if !ans[x]
        ans[x] = y 
      end 
      if !ans[x][:count]
        ans[x][:count] = 1 
      else 
        ans[x][:count] += 1
      end
    }
  }
  ans 
end

def apply_coupons(cart, coupons)
  coupons.each {|x,y|
    if cart.include?(x)
      if cart[x][:count] =< coupons[x][:num]
        cart["#{x} W/COUPON"] = {price: coupons[x][:cost], }
        
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
