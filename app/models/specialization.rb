class Specialization < ApplicationRecord
  has_many :doctors
  validates_presence_of :name, :description
end
