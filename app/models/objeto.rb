class Objeto < ActiveRecord::Base
  belongs_to :local
  belongs_to :categoria
  has_many :inspecoes
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }
  validate :categoria_inexistente
  validate :local_inexistente


  def categoria_inexistente
    errors.add(:categoria_id, "Categoria inexistente") if Categoria.where(:id => categoria_id).empty?
  end

  def local_inexistente
    errors.add(:local_id, "Local inexistente") if Local.where(:id => local_id).empty?
  end
end
