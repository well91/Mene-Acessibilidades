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
    3.times {@inspecao.detalhes_inspecao.build}
  end

  def create
    begin
      @inspecao = Inspecao.new(params[:inspecao])
      @inspecao.objeto_id = params[:objeto_id]
      @inspecao.save
      redirect_to objetos_path
    rescue
      @inspecao = Inspecao.new(params[:inspecao])
      @objeto = Objeto.find(params[:objeto_id])
      render :new
    end
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
