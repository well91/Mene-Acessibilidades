#encoding: utf-8
class Caracteristica < ActiveRecord::Base
  belongs_to :categoria
  has_many :detalhes_inspecao
  attr_accessible :nome

  validates :nome, :presence => true, :length => {:minimum => 3}
  validate :categoria_inexistente

  def categoria_inexistente
	errors.add(:categoria_id, "Categoria inexistente") if Categoria.where(:id => categoria_id).empty? 	 
  end
end
