
a = gets
b = gets

def inverted(invert,length_loop)
	loop_cntrl,rev = 0,0
	temp = invert
	while loop_cntrl < length_loop do
		rem = temp % 10
		
		if rem == 0
			rev = rev*10 + rem
		elsif rem == 1
			rev = rev*10 + rem
		elsif rem == 6
			rev = rev*10 + 9
		elsif rem == 8
			rev = rev*10 + rem
		elsif rem == 9
			rev = rev*10 + 6
		end	

		temp = (temp / 10).to_i
	  loop_cntrl =loop_cntrl + 1
	end

	if rev == invert
		return true
	end
end

def inverted_input(a,b)
	ttl_inver_num,retn,length_loop = 0,false 

	for i in (a..b)
		retn = inverted i , i.to_s.size
		
		if retn == true 
			ttl_inver_num = ttl_inver_num + 1
		end

		retn = false
	end

	puts ttl_inver_num
end


inverted_input a.to_i , b.to_i