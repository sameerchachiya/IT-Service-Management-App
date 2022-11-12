class Employee < ApplicationRecord
  belongs_to :designation
  has_one :user
  has_many :tickets

  # validations for employee
  validates :name, presence: true
  validates :phone, presence: true

  # to display validation message to the loggers
  after_validation :log_errors, if: proc { |m| m.errors }
  def log_errors
    Rails.logger.debug errors.full_messages.join("\n")
  end
end
