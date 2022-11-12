class Ticket < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :employee
  belongs_to :tstatus

  before_validation(on: :create) do
    self.service_id = 4 # this will assign the service engineer to NONE
    self.tstatus_id = 1 # this will assign the status to logged
  end
  validates :description, presence: true

  # model
  after_validation :log_errors, if: proc { |m| m.errors }

  def log_errors
    Rails.logger.debug errors.full_messages.join("\n")
  end
end
