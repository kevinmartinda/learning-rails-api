module Api
	module V1
		class BarangsController < ApplicationController
			def index
				barangs = Barang.order('id DESC');
				render json: {status: 'success', message: 'loaded barangs', data:barangs}, status: :ok
			end

			def show
				barang = Barang.find(params[:id]);
				render json: {status: 'success', message: 'loaded barang', data:barang}, status: :ok
			end

			def create
				barang = Barang.new(barang_params)

				if barang.save
					render json: {status: 'success', message: 'saved barangs', data:barangs}, status: :ok
				else
					render json: {status: 'success', message: 'loaded barangs', data:barangs.error}, status: :unprocessable_entity
				end
			end

			private
			def barang_params
				params.permit(:name, :stock)
			end
		end
	end
end