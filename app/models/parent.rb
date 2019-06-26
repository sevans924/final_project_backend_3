class Parent < ApplicationRecord
    has_many :studentParents
    has_many :students, through: :studentParents
end
