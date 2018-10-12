require "base64"
require "HTTParty"

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body, response.code, response.message, response.headers.inspect

def encoding(paramètres)
    ## je transforme mes clés de cette manière client_id:secret_id
    client_id = Base64.encode64(paramètres)
    client_id += "Basic "
    ## j'encode en base 64 (regarde la doc, Ruby a plusieurs méthodes pour ça)
    ## Je rajoute "Basic " devant mon ma string encodé (n'oublie pas l'espace)
end


def post
  ma_requete_post = HTTP.post("https://accounts.spotify.com/api/token", client_id:secret_id: {type_Header : "ce899fb845b74abc86494d46f4a0c3e6:7a110a71cae04d6284089e83891d01bc"}, Grant_type: {type_Body : "client_credentials"})
end

post
