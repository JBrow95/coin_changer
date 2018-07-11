def changer(amount)
	change = {}
	while amount > 0 do
		
		if amount >= 5
			change[:nickel] = 1
		   amount -= 5		
		elsif amount >= 1
			change[:penny] = 1
			amount -= 1
		end
	end
	change
end