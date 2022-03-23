class MooviesController < ApplicationController
  before_action :set_moovy, only: %i[ show update destroy ]

  # GET /moovies
  def index
    @moovies = Moovie.all

    render json: @moovies
  end

  # GET /moovies/1
  def show
    render json: @moovy
  end

  # POST /moovies
  def create
    @moovy = Moovie.new(moovy_params)

    if @moovy.save
      render json: @moovy, status: :created, location: @moovy
    else
      render json: @moovy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moovies/1
  def update
    if @moovy.update(moovy_params)
      render json: @moovy
    else
      render json: @moovy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moovies/1
  def destroy
    @moovy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moovy
      @moovy = Moovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def moovy_params
      params.require(:moovy).permit(:image, :title, :score)
    end
end
