module Api
	module V1
		class EmployeesController < ApplicationController
			def index
				employees = Employee.order('id DESC')
				render json: {status: 'SUCCESS', message: 'loaded employees', data:employees}, status: :ok
			end
			def create
				employee = Employee.new(employee_params)

				if employee.save
					render json: {status: 'SUCCESS', message: 'saved employees', data:employees}, status: :ok	
				else
					render json: {status: 'ERROR', message: 'unsaved employee', data:employee}, status: :unprocessable_entity	
				end
			end

			private
			def employee_params
				params.permit(:fullname, :position, :empcode, :mobile)
			end
		end
	end
			
end