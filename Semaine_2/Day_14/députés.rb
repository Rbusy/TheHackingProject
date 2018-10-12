require 'nokogiri'
require 'open-uri'

def jean_michel_pas_ltemps
  doc =  Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/tableau"))
  array = []

  doc.css('a').each do |elem|
      if elem["href"].include?("/deputes/fiche/OMC_")
        array << "http://www2.assemblee-nationale.fr/" + elem["href"]
      end
  end
  return array
end




def finding_everything

  hash = Hash.new(0)
  array = jean_michel_pas_ltemps
  i = 0

   while i < array.length do
    doc = Nokogiri::HTML(open(array[i]))
    nom = doc.css('h1').text.to_s.split(' ').drop(1)
    hash.store("firstname", nom[0])
    nom = nom.drop(1)
    nom = nom.join(' ')
    hash.store("lastname", nom)
    mail = doc.css('a.email')[0]["href"].to_s[7..-1]
    hash.store("mail", mail)
    i += 1
    puts hash
   end
end

finding_everything
