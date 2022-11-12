class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  # list all the employees
  def index
    @employees = Employee.all
  end

  # New session for employee
  def new
    @employee = Employee.new
  end

  # Create a new Employee
  def create
    @employee = Employee.new(employee_valid)
    employee_service = EmployeeCreationService.new(employee_params)

    respond_to do |format|
      if employee_service.execute!
        format.html { redirect_to employee_service.employee }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  # set a particular ticket for action
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def employee_params
    params.require(:employee).permit(:name, :phone, :designation_id, :email, :password)
  end

  def employee_valid
    params.require(:employee).permit(:name, :phone, :designation_id)
  end
end
