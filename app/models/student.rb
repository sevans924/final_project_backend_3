class Student < ApplicationRecord
  belongs_to :counselor
  has_many :studentParents
  has_many :parents, through: :studentParents
  has_many :checkIns

  validates :email, uniqueness: true
  has_secure_password
  
end



