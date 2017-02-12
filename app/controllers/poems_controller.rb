class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    @poem = Poem.find(params[:id])
    render json: @poem
  end
end
