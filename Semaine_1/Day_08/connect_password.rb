def perform
	define_password
	password_verification
end

def define_password
	puts "Choisissez un mot de passe"
	user_password = gets.chomp
	return user_password
end

def password_verification(user_password)
	test = 1
	while test == 1 do
		puts "Retapez votre mot de passe"
		mdp = gets.chomp
		if mdp == user_password
			test = 0
			puts "You are online"
		end
	end
end

def connect_password(password)
	password_verification(password)
end

pass = define_password
connect_password(pass)