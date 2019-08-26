class ParksController < ApplicationController
  @current_user ||= User.find(session[:user_id])
  def index
    if current_user
    @parks = Park.all
    json_response(@parks)
  end

  def show
    if current_user
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {message: "Thanks for updating this park's information."}
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy!
      render status: 200, json: {message: "This park's record has been removed."}
    end
  end

  private
  def park_params
    params.permit(:name, :description, :location)
  end
end
