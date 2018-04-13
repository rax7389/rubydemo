require "date"
user_data = [
 {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
 {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-1990',  :address => 'bhanwar kua', :role => 'seller'}, 
 {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
 {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-1992',  :address => 'geeta bhawan', :role => 'seller'}, 
 {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
]               #inputlist of userdata

product_data = [
 {:name => 'bicycle', :seller => 'alex', :price => 3000, category: 'vehicle'},
 {:name => 'car', :seller => 'meena', :price => 250000, category: 'vehicle'},
 {:name => 'jeans', :seller => 'prabhu', :price => 1800, category: 'clothes'},
 {:name => 'shirt', :seller => 'prabhu', :price => 700, category: 'clothes'},
 {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, category: 'clothes' },
 {:name => 't-shirt', :seller => 'prabhu', :price => 600, category: 'clothes'},
 {:name => 'capri', :seller => 'prabhu', :price => 300, category: 'clothes'},
 {:name => 'bike', :seller => 'meena', :price => 60000, category: 'vehicle'},
 {:name => 'scooter', :seller => 'meena', :price => 25000, category: 'vehicle'},
 {:name => 'maruti', :seller => 'meena', :price => 400000, category: 'vehicle'},
 {:name => 'auto', :seller => 'meena', :price => 100000, category: 'vehicle'},
 {:name => 'sweter', :seller => 'prabhu', :price => 1200, category: 'clothes'},
 {:name => 'jacket', :seller => 'prabhu', :price => 3500, category: 'clothes'},
 {:name => 'hat', :seller => 'prabhu', :price => 400, category: 'clothes'},
 {:name => 'doll', :seller => 'alex', :price => 350, category: 'toys'},
 {:name => 'toy car', :seller => 'alex', :price => 250, category: 'toys'},
 {:name => 'bat', :seller => 'alex', :price => 700, category: 'toys'},
 {:name => 'ball', :seller => 'alex', :price => 20, category: 'toys'},
 {:name => 'batman', :seller => 'alex', :price => 300, category: 'toys'},
 {:name => 'barbi doll', :seller => 'alex', :price => 3000, category: 'toys'}
]               #inputlist of product data

class Buyer_Seller  
  def userDetails(user)                     #It will return list of user objects
    user_details = Array.new
    for userno in (0...user.length)
      user_details[userno] = user[userno][:first_name]<<" "<<user[userno][:last_name]<<" "<<user[userno][:date_of_birth]<<" "<<user[userno][:address]<<" "<<user[userno][:role]
    end
    return user_details
  end

  def userBuyerName(user)                   #It will return the full name of buyer
    if user[:role] == "buyer"
      return user[:first_name]<<" "<<user[:last_name]
    end
    return "No detail Found"
  end

  def userSellerName(user)                  #It will return the full name of seller
    if user[:role] == "seller"
      return user[:first_name]<<" "<<user[:last_name]
    end
    return "No detail Found"
  end

  def userDOB(dob)                          #It will return age of user after calculating from date_of_birth
    return Date.today.year - (Date.parse dob[:date_of_birth]).year
  end

  def buyerDetailsList(user)                #It will return array of all the buyer objects
    user_buyer_name = Array.new
    new_user_no = 0
    for userno in (0...user.length)
      if user[userno][:role] == "buyer"
       user_buyer_name[new_user_no] = user[userno][:first_name]<<" "<<user[userno][:last_name]
       new_user_no += 1
      end
    end
    return user_buyer_name
  end

  def sellerDetailsList(user)               #It will return array of all the buyer objects
    user_seller_name = Array.new
    new_user_no = 0
    for userno in (0...user.length)
      if user[userno][:role] == "seller"
       user_seller_name[new_user_no] = user[userno][:first_name]<<" "<<user[userno][:last_name]
       new_user_no += 1
      end
    end
    return user_seller_name
  end

  def specificUserDetails(user)             #It will return array of all the user objects whose first name is alex
    specific_user_name = Array.new
    new_user_no = 0
    for userno in (0...user.length)
      if user[userno][:first_name] == "alex"
       specific_user_name[new_user_no] = user[userno][:first_name]<<" "<<user[userno][:last_name]<<" "<<user[userno][:date_of_birth]<<" "<<user[userno][:address]<<" "<<user[userno][:role]
       new_user_no += 1
      end
    end
    return specific_user_name
  end
end

class Product
  def productDetails(product)               #It will return list of product objects
    product_details = Array.new
    for productno in (0...product.length)
      product_details[productno] = product[productno][:name]<<" "<<product[productno][:seller]<<" "<<product[productno][:price].to_s<<" "<<product[productno][:category]
    end
    return product_details
  end
end

puts "UserDetails:-"
userObject = Buyer_Seller.new
puts userObject.userDetails(user_data)
puts "\nBuyerName:-"
puts userObject.userBuyerName({:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'})
puts "\nSellerName:-"
puts userObject.userSellerName({:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'})
puts "\nDate of Birth:-"
puts userObject.userDOB({:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-1982',  :address => 'sapna sangeeta', :role => 'buyer'})
puts "\nBuyer Details:-"
puts userObject.buyerDetailsList(user_data)
puts "\nSeller Details:-"
puts userObject.sellerDetailsList(user_data)
puts "\nSpecific User details:-"
puts userObject.specificUserDetails(user_data)
puts "\nProductDetails:-"
productObject = Product.new
puts productObject.productDetails(product_data)