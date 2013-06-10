class InspecoesController < ApplicationController
  def index
   @inspecoes = Inspecao.all
  end

  def show
    @inspecao = Inspecao.find(params[:id])
  end

  def new
    @objeto = Objeto.find(params[:id])
    @inspecao = Inspecao.new
  end

  def create
    @inspecao = Inspecao.new(params[:inspecao])
  end

  def edit
    @inspecao = Inspecao.find(params[:id])
  end

  def update
    @inspecao = Inspecao.find(params[:id])
    @inspecao.update_attributes!(params[:inspecao])
    redirect_to inspecoes_path
  end

  def destroy
    @inspecao = Inspecao.find(params[:id])
    @inspecao.destroy
    redirect_to inspecoes_path
  end
end
