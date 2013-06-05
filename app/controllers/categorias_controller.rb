class CategoriasController < ApplicationController
  def index
    @categorias = Categoria.all
  end

  def show
    @categoria = Categoria.find(:id)
  end

  def new
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new(params[:categoria])
  end

  def edit
    @categoria = Categoria.find(:id)
  end

  def update
  end

  def delete
    @categoria = Categoria.find(:id)
    @categoria.destroy
  end
end

