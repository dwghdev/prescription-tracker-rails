class Doctor < ApplicationRecord
  has_many :prescriptions
  belongs_to :specialization

  validates_presence_of :firstname, :lastname, :gender, :license_no, :specialization_id

  def fullname
    "#{self.firstname} #{self.lastname}"
  end
end
