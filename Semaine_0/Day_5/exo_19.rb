array = []
nbr = 1
while nbr <= 50  do
	if nbr % 2 == 0
		array << "jean.dupont.#{nbr}@email.fr"
	end
	nbr += 1 
end
puts array