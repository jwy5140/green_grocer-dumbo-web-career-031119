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
  coupons.each_with_index {|x,y|
    if cart[coupons[y][:item]]
      if cart[coupons[y][:item]][:count] <= coupons[y][:num]
        binding.pry
        cart["#{coupons[y][:item]} W/COUPON"] = {price: coupons[y][:cost], clearance: cart[coupons[y][:item]][:clearance], count: (cart[coupons[y][:item]][:count]/coupons[y][:num]).floor}
        cart[coupons[y][:item]][:count] = cart[coupons[y][:item]][:count]%coupons[x][:num]
      end
    end
  }
    cart.delete_if {|x,y|
    cart[coupons[y][:price]] === 0 
  }
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
