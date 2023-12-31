class Api::PetsController < ApplicationController
  include Authenticable

  before_action :authenticate_with_token
  before_action :set_pet, only: %i[show update destroy]

  # GET /pets
  def index
    @pets = Pet.by_token(@token).search(params[:term]).sorted_by_name

    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params.to_h.merge!({ token: @token }))

    if @pet.save
      render json: @pet, status: :created, location: api_pet_url(@pet)
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy!
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.by_token(@token).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:name)
    end
end
