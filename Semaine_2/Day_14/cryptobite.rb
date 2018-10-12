require 'nokogiri'
require 'open-uri'

def get_ma_grosse_bite_de_kebab(link)

  doc = Nokogiri::HTML(open(link))
  hash = Hash.new(0)
  i = 0
  array = []
  array2 = []

  doc.css("a.currency-name-container").each do |elem|
      array << elem.text
  end
  doc.css("a.price").each do |elem|
      array2 << elem.text
  end

    while i < 2062 do
     hash.store(array[i], array2[i])
     i += 1
     end
     puts hash
end


get_ma_grosse_bite_de_kebab("https://coinmarketcap.com/all/views/all/")
