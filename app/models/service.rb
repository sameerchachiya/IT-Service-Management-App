class Service < ApplicationRecord
  belongs_to :employee
  has_many :tickets
end
