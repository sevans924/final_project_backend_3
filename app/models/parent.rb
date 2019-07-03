class Parent < ApplicationRecord
    has_many :studentParents
    has_many :students, through: :studentParents

    validates :email, uniqueness: true
    has_secure_password
end
