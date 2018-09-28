puts "Entrez votre age"
age = gets.chomp.to_i
nbr = 0
while age > 0 do
	print 'Il y a ' 
	print age
	print ' ans, tu avais ' 
	print nbr 
	puts ' ans'
	age -= 1
	nbr += 1
end