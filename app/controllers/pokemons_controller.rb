class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @pokeball = Pokeball.new(caught_on: Date.today)
  end

  def random
    @pokemon = Pokemon.order("RANDOM()").first
    @pokeball = Pokeball.new(pokemon: @pokemon, caught_on: Date.today)
    render :show
  end
end
