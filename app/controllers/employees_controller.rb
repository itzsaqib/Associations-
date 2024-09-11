class EmployeesController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Employee.ransack(params[:q])
    @employees = @q.result.page(params[:page]).per(5) # Adjust the number per page as needed
  end

  def show
  @employee = Employee.find(params[:id])
  end

  def new
  @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
     redirect_to @employee
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :role, :manager_id)
  end
end
