class InspecoesController < ApplicationController
  def index
   @inspecoes = Objeto.find(params[:objeto_id]).inspecoes.all
  end

  def show
    @inspecao = Inspecao.find(params[:id])
  end

  def new
    @objeto = Objeto.find(params[:objeto_id])
    @inspecao = Inspecao.new
    @objeto.categoria.caracteristicas.length.times {@inspecao.detalhes_inspecao.build}
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
