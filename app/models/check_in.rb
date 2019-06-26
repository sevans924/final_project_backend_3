class CheckIn < ApplicationRecord
  belongs_to :student
  belongs_to :counselor
end
