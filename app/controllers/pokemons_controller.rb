class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new
	end
	def create
		@pok = Pokemon.new pokemon_params
		@pok.trainer_id = current_trainer.id
		@pok.level = 1
		@pok.health = 100
		if @pok.save
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to :back
			flash[:danger] = "Invalid Pokemon name. Try again."
		end
	end
	def capture
		captured_pokemon_id = params[:id]
		captured_pokemon = Pokemon.find(captured_pokemon_id)
		captured_pokemon.trainer_id = current_trainer.id
		captured_pokemon.save
		redirect_to root_path
	end
	def damage
		hurt_pokemon_id = params[:id]
		hurt_pokemon_id = Pokemon.find(hurt_pokemon_id)
		hurt_pokemon_id.health -= 10
		if hurt_pokemon_id.health == 0
			hurt_pokemon_id.destroy
		else
			hurt_pokemon_id.save
		end
		redirect_to :back
	end

	private
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
