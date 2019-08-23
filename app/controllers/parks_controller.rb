class ParksController < ApplicationController

  def index
    @parks = {"Forest Park": "Beautiful park located in nw portland."}
    json_response(@parks)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status
  end
end
