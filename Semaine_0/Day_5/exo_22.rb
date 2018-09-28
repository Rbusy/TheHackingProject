puts 'Salut, bienvenue dans ma super pyramide ! Combien d\'étages veux-tu ?'
print '> '
etage = gets.chomp.to_i
if etage < 1 || etage > 25
	puts 'Nombre incorrect'
	return
end
puts 'Voici la pyramide :'
for i in 1..etage
	nbr = etage - i
	while nbr > 0
		print ' '
		nbr -= 1
	end
	while i > 0
		print '#'
		i -=1
	end
	puts ''
end
