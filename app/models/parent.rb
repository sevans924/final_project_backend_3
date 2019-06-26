class Parent < ApplicationRecord
    has_many :studentParents
    has_many :students, through: :studentParents

    validates :email, uniqueness: true
    validates(:password, { :length => { :in => 6..20 } })
end
