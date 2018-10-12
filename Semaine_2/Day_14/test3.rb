
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp' # gem à installer : gem install pp

full_name = []
first_name = []
last_name = []
email =[]


debug = []


doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA759192"))


if doc.xpath('//section/dl/dd[1]/a').empty?
  puts "test"
end

puts email


=begin
  M. Jean-Luc Poudroux
  http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA759192
  /html/body/div[3]/div/div/div/section[2]/div/div/div/article/div[3]/section/h2 (contact)

  Autre meuf
  http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA719866
  /html/body/div[3]/div/div/div/section[2]/div/div/div/article/div[3]/section/dl/dd[1]/a

#puts "".index("")

#puts ['hello.rb','world.rb','public.html'].grep(/(.*)\.html/){$1}

# spit space

=end



