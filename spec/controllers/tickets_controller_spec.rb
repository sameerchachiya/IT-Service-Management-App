require 'rails_helper'

describe TicketsController, type: :controller do
    
    # describe 'GET show' do
    it 'gets show based on ID' do
        @ticket = Ticket.new(id: 1,kind: "Example Ticket", description: "Ticket@example.com", service_id: 1, employee_id: 1,tstatus_id:1)
        get :show, params: { id: @ticket.id }
        expect(response.status).to eq(200)
    end

    
    # describe 'GET edit' do
    it 'has 200 status code' do
        get :new
        expect(response.status).to eq(200)
    end
    
 end