def ask_first_nam
	puts "Entrez votre nom:"
	@first_name = gets.chomp
end

def say_hello(first_name)
	puts "Hello #{first_name}!"
end

ask_first_nam
say_hello(@first_name)