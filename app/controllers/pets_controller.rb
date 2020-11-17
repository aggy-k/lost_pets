class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    # params: { pet: {name: 'ssome name', address: '....'} }
    @pet = Pet.new(pet_params)
    @pet.save
    # redirect_to pet_path(@pet)
    redirect_to pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
