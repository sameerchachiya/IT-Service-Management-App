require 'rails_helper'

describe EmployeesController, type: :controller do
    
    describe 'GET index' do

        it 'has 200 status code' do
            get :index
            expect(response.status).to eq 200
        end

        it 'returns all the employees' do
            get :index
            expect(response).to render_template('index')
        end

        it 'has 200 status code' do
            get :new
            expect(response.status).to eq(200)
        end
    end

    describe 'POST create' do    

        it 'has 200 status code' do
            d1 = Designation.create!(role: 'SDE')
            post :create, params: {
                employee: {
                    name: 'emp1', phone: '1234567890',
                    designation_id: d1.id, email: 'abc@g.com', 
                    password: '123455689'
                }
            }
            expect(response.status).to eq 302
        end

        it 'returns 422 status when the designation is not present' do   
            post :create, params: {
                employee: {
                    name: 'emp1', phone: '1234567890',
                    designation_id: '2', email: 'abc@g.com', 
                    password: '123455689'
                }
            }
            expect(response.status).to eq 422
        end
    end
end