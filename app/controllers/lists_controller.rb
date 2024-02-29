class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def create
    @list = List.new(strong_params)
    @list.save
    redirect_to list_path(list)
  end

  def new
  end

  private

  def strong_params
    params.require(:list).permit(:name)
  end

end
