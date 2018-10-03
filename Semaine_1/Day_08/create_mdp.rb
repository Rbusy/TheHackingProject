def perform
	define_password
	password_verification
end

def define_password
	puts "Choisissez un mot de passe"
	@user_password = gets.chomp
end

def password_verification
	test = 1
	while test == 1 do
		puts "Retapez votre mot de passe"
		mdp = gets.chomp
		if mdp == @user_password
			test = 0
		end
	end
end