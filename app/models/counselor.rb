class Counselor < ApplicationRecord
    has_many :students
    has_many :checkIns

    validates :email, uniqueness: true
    validates(:password, { :length => { :in => 6..20 } })
end
