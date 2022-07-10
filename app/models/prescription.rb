class Prescription < ApplicationRecord
  belongs_to :doctor
  has_one :prescription_medicine
end
