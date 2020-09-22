class JacketsController < ApplicationController

  def index
    @jackets = Jacket.all
  end

  def show
    @jacket = find_jacket
  end

  def new
    @jacket = Jacket.new
  end

  def edit
    @jacket = find_jacket
  end

  def update
    jacket = find_jacket
    jacket.update(name: params[:jacket][:name], made_in: params[:jacket][:made_in])
    redirect_to jacket_path(jacket)
  end

  def create
    jacket = Jacket.create(name: params[:jacket][:name], made_in: params[:jacket][:made_in])
    redirect_to jacket_path(jacket)
  end


  private

  def find_jacket
    Jacket.find(params[:id])
  end

end
