class Dogsitter < ApplicationRecord
  has_many :strolls
  has_many :dogs, through: :strolls
  has_one :city
end
