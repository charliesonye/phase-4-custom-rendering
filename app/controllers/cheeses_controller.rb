class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, methods: :summary
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
