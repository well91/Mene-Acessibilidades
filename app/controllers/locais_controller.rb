class LocaisController < ApplicationController
  def index
    @locais = Local.all
  end


  def new
    @local = Local.new
  end

  def create
    @local = Local.new(params[:local])
    @local.save
    redirect_to locais_path
  end

  def edit
    @local = Local.find(params[:id])
  end

  def update
    @local = Local.find(params[:id])
    @local.update_attributes!(params[:local])
    redirect_to locais_path
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to locais_path
  end
end