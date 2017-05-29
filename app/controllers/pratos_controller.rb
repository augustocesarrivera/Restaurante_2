class PratosController < ApplicationController
	def index
	  @prato = Prato.order :restaurante_id
	end
	def new
		@prato = Prato.new
	end
	def prato_params
	  params.require(:prato).permit(:restaurante_id, :nome_prato, :preco)
	end
	def create
	  @prato = Prato.new prato_params
	  @prato.save
	  redirect_to(action: "index")
	end
	def destroy
	  @prato = Prato.find(params[:id])
	  @prato.destroy

	  redirect_to(action: "index")
	end
	def edit
	  @prato = Prato.find params[:id]
	end
	def update
	  @prato = Prato.find(params[:id])
	  @prato.update_attributes(prato_params)

	  redirect_to(action: "index")
	end
end
