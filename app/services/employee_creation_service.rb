class EmployeeCreationService
  attr_reader :employee
  def initialize(employee_params)
    @employee_params = employee_params.except(:email, :password)
    @user_params = employee_params.slice(:email, :password)
  end

  def execute!
    begin
      @employee = Employee.create!(@employee_params)
      User.create!(@user_params.merge(employee: employee))
    rescue => exception
      @ex = exception
      return false
    end
    true
  end
end
