def ask_number
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	@number = gets.chomp.to_i
end

def odd_pyramide(number)

	increment = 1
	for i in 1..@number
		nbr = number - i
		b = increment
		while nbr > 0 do
			print ' '
			nbr = nbr - 1
		end
		while b > 0 do
			print '#'
			b = b - 1
		end
		puts ''
		increment = increment + 2
	end
end

ask_number
odd_pyramide(@number)