class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find params[:id]
    @race = @character.race
    @profession = @character.profession
    @background = @character.background
    @strdeco = @character.strdeco
  end

  def reroll
    @character = Character.find params[:id]
    @character.strdeco = Strdeco.generate_strdeco(@character)
    @character.save
    redirect_to @character
  end

  def new
    @character = Character.new
  end

  def create
    collection = @current_user.collection
    character = Character.create character_params

    strdeco = Strdeco.generate_strdeco( character )

    character.strdeco_id = strdeco.id

    collection.characters << character
    redirect_to character
  end

  def edit
    @character = Character.find params[:id]
  end

  def update
    character = Character.find params[:id]
    character.update character_params
    redirect_to character
  end

  def destroy

    character = Character.find params[:id]
    character.destroy
    redirect_to current_user
  end

  private
    def character_params
      params.require(:character).permit(:name, :race_id, :profession_id, :background_id)
    end
end
