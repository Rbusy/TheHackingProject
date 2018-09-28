puts 'Entrez votre année de naissance'
nbr = gets.chomp.to_i
nbr2 = 0
while nbr <= (Time.now.year - 1) do
	print nbr
	print ' '
	puts nbr2
	nbr += 1
	nbr2 += 1
end