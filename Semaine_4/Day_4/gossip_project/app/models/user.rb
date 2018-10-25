class User < ApplicationRecord
  has_one :city
  has_many :gossips
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :privatemessages
end
