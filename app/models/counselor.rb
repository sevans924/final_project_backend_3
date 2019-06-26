class Counselor < ApplicationRecord
    has_many :students
    has_many :checkIns
end
