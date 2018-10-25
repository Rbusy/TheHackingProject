class City < ApplicationRecord
  belongs_to :dogsitter
  belongs_to :dog
  has_many :dogsitters
  has_many :dogs
end
