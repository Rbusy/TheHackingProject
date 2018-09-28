puts "Entrez votre age"
age = gets.chomp.to_i
nbr = 0
while age > 0 do
	if age != nbr
		print 'Il y a ' 
		print age
		print ' ans, tu avais ' 
		print nbr 
		puts ' ans'
	else
		print 'Il y a '
		print age
		puts ' ans, tu avais la moitié de l\'age que tu as aujourd\'hui'
	end
	age -= 1
	nbr += 1
end