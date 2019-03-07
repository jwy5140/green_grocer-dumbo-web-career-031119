require 'pry'

def consolidate_cart(cart)
  ans = {}
  cart.each {|x|
    x.each {|x,y|
      binding.pry
    }
  }
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
