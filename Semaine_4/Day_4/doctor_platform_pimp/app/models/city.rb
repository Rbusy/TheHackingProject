class City < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :appointment
  has_many :doctors
  has_many :patients
  has_many :appointments
end
