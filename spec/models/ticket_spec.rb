require 'spec_helper'

describe Ticket do

before do
  @tstatus = Tstatus.new(status: 'LOGGED')
  @designation = Designation.new(role: 'SDE')
  @employee = Employee.new(name:"test",phone:"123456",designation_id:1,service_id:1)
  @service = Service.new(status:"SERVICE",employee_id:1)
  @ticket = Ticket.new(kind: "Example Ticket", description: "Ticket@example.com",
                  service_id: 1, employee_id: 1,tstatus_id:1)
end

subject { @ticket }

#test case to check for validation
describe "when desc is not present" do
  before { @ticket.description = " " }
  it { should_not be_valid }
end

end
