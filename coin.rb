def changer(amount)
	change = {}
	while amount > 0 do
		if amount >= 25
			amount -= 25
			if change.key?(:quarter) then change[:quarter] += 1
			else
				change[:quarter] = 1
			end
		elsif amount >= 10
			amount -= 10
			if change.key?(:dime) then change[:dime] += 1
			else
				change[:dime] = 1
			end
		elsif amount >= 5
		   amount -= 5		
		   if change.key?(:nickel) then change[:nickel] += 1
			else
				change[:nickel] = 1
			end
		elsif amount >= 1
			amount -= 1
			if change.key?(:penny) then change[:penny] += 1
			else
				change[:penny] = 1
			end
		end
	end
	change
end