# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
# require 'pp' # gem à installer : gem install pp


# def french_deputies
#   doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/tableau"))

#   deputy_link = []
#   full_name = []
#   first_name = []
#   last_name = []
#   email = []

#   doc.xpath('//td[1]/a').each do |node|

#     full_name << node.text
#     deputy_link << "http://www2.assemblee-nationale.fr" + node["href"]

#   end

#   deputy_link.each do |node|
#     doc = Nokogiri::HTML(open("#{node}"))

#     doc.xpath('//section/dl/dd[1]/a').each do |node|
#       if doc.xpath('//section/dl/dd[1]/a').node["href"][7..-1].size > 0 #ici ou j'essaie de gérer ma condition
#         email << node["href"][7..-1]
#       else
#         email << "N.C."
#       end
#     end
#   end

#   deputies_hash = Hash.new(0)

#   deputies_hash = [full_name,email].transpose.to_h

#   pp deputies_hash

# end
# french_deputies()




# mailto:michele.victory@assemblee-nationale.fr



# /html/body/div[3]/div/div/div/section[2]/div/div/div/article/div[4]/section/dl/dd[1]/a

# email = []

# doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA267330"))

# doc.xpath('//section/dl/dd[1]/a').each do |node|
#   email<< node["href"]
# end

# puts email

