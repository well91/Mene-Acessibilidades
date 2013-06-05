class ObjetosController < ApplicationController
  def index
    @objetos = Objeto.all
  end

  def show
    @objeto = Objeto.find(params[:id])
  end

  def new
    @objeto = Objeto.new
  end

  def create
    @objeto = Objeto.new(params[:objeto])
    @objeto.save
    redirect_to objetos_path
  end

  def edit
    @objeto = Objeto.find(params[:id])
  end

  def update
    @objeto = Objeto.find(params[:id])
    @objeto.update_attributes!(params[:objeto])
    redirect_to objetos_path
  end

  def destroy
    @objeto = Objeto.find(params[:id])
    @objeto.destroy
    redirect_to objetos_path
  end
end
