class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.new
  end
  def new
    @list = List.new
    @list = List.find(params[:id])
  end
end
