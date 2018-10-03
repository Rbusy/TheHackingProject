def afficher_marche(nb)
	while nb > 1 do
		print '#'
		nb = nb - 1
	end
	puts '#'
end

def global_settings
	@global_nb = 10
end

def random
	nb = rand(1..10)
	return nb
end

def player_turn
	result = 0
	while result == 0 do
		puts "Lancer les dés ? y/n"
		answer = gets.chomp
		if answer == 'y' || answer == ' ' || answer == $/
			result = 1
		end
	end
end

def pause
	result = 0
	while result == 0 do
		puts ''
		answer = gets.chomp
		if !answer.empty?
			result = 1
		end
	end
	print $/
end

def computer_turn
	nb = random
	print $/
	print "Tu as eu un "
	print nb
	puts '. y/n'
	if nb == 5 || nb == 6
		puts "Tu avances d'une case."
		@global_nb = @global_nb - 1
	elsif nb == 1
		puts "Tu descends d'une case."
		@global_nb = @global_nb + 1
	elsif nb == 2 || nb == 3 || nb == 4
		puts "Essaye encore." 
	end
	pause
	puts "Tes marches :"
	afficher_marche(@global_nb)
	print $/
end

def game
	global_settings

	while @global_nb != 0 do
		if @global_nb > 10
			@global_settings = 10	
		end
		player_turn
		computer_turn
	end
end

game