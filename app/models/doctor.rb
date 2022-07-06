class Doctor < ApplicationRecord
  has_many :prescriptions
  validates_presence_of :firstname, :lastname, :gender, :license_no, :specialization
end
