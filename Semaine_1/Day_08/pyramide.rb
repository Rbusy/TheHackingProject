def get_nombre
	puts "Entrez un nombre:"
	@nombre = gets.chomp.to_i
end

def pyramide(nombre)
	if nombre < 1 || nombre > 25
	puts 'Nombre incorrect'
	return
	end
	puts 'Voici la pyramide :'
	for i in 1..nombre
		nbr = nombre - i
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
end

get_nombre
pyramide(@nombre)