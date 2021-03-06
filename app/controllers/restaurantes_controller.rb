class RestaurantesController < ApplicationController
	def index
	  @restaurantes = Restaurante.order :nome
	  if params[:search]
	    @restaurantes = Restaurante.search(params[:search]).order('nome DESC')
	  else
	    @restaurantes = Restaurante.order('nome DESC')
	  end
	end
	def new
		@restaurante = Restaurante.new
	end
	def restaurante_params
	  params.require(:restaurante).permit(:nome)
	end
	def create
	  @restaurante = Restaurante.new restaurante_params
	  @restaurante.save
	  redirect_to(action: "index")
	end
	def destroy
	  @restaurante = Restaurante.find(params[:id])
	  @restaurante.destroy

	  redirect_to(action: "index")
	end
	def edit
	  @restaurante = Restaurante.find params[:id]
	end
	def update
	  @restaurante = Restaurante.find(params[:id])
	  @restaurante.update_attributes(restaurante_params)

	  redirect_to(action: "index")
	end

end
