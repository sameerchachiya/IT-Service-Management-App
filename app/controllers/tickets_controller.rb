class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update destroy assign]
  before_action :set_assign_ticket, only: %i[assignid]

  # shows the landing page of employee
  def landing
    @tickets = current_user.employee.tickets.order("tstatus_id, id desc")
  end

  # Service engineer index showing the tickets which are assinged to him
  def slanding
    @tickets = Ticket.where(service_id: current_user.employee.service_id).order("tstatus_id, id desc")
  end

  # Showing tickets list  based on the user type
  def index
    @tickets = if current_user.employee.designation.role == "ADMIN"
      Ticket.all.order("tstatus_id ,id desc ")
    else
      Ticket.where(employee: current_user.employee)
    end
  end

  def show
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  # creating a new ticket
  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.employee = current_user.employee
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to landing_path }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # updating a ticket
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        if current_user.employee.designation.role == "ADMIN"
          format.html { redirect_to tickets_url }
        else
          format.html { redirect_to slanding_path }
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_ticket
    @ticket = Ticket.where(id: params[:id]).first
  end

  def ticket_params
    params.require(:ticket).permit(:kind, :description, :dev_id, :service_id, :tstatus_id)
  end

  def set_assign_ticket
    @ticket = Ticket.find(params[:id])
  end
end
