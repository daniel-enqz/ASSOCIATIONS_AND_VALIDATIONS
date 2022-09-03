class Patient < ActiveRecord::Base
  has_many :consultations
  belongs_to :intern
  has_many :doctors, through: :consultations
end
