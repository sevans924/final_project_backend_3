class Counselor < ApplicationRecord
    has_many :students
    has_many :checkIns

    validates :email, uniqueness: true
    has_secure_password
end
