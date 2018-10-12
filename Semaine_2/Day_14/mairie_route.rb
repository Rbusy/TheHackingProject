require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage(link)

  doc = Nokogiri::HTML(open(link))

  puts doc.css('td')[7].text

end

def get_all_the_urls_of_val_doise_townhalls(link)

  doc = Nokogiri::HTML(open(link))
  i = 8
  count = doc.css('a').length - 1 #retirer plan du site href
  array = []

  while i < count do
      array << doc.css('a')[i]["href"]
      i += 1
  end
  return array
end

def do_the_special_kebab

  array = get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")
  array.each do |element|
    get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/" + "#{element}")
  end
end

do_the_special_kebab
