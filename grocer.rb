require 'pry'

def consolidate_cart(cart)
  ans = {}
  cart.each {|x|
    x.each {|x,y|
      if !ans[x]
        ans[x] = y 
      elsif !ans[x][:count]
        ans[x][:count] = 0 
      else 
        ans[x][:count] += 1
      end
      binding.pry
    }
  }
  ans 
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
