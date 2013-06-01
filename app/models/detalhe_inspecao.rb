class DetalheInspecao < ActiveRecord::Base
  belongs_to :caracteristica
  belongs_to :inspecao
  attr_accessible :aprovada, :comentario

  validate :inspecao_invalida
  validate :caracteristica_invalida

  def inspecao_invalida
  	errors.add(:inspecao_id, "Inspecao inexistente") if Inspecao.where(:id => inspecao_id).empty?
  end

  def caracteristica_invalida
  	errors.add(:caracteristica_id, "Caracteristica inexistente") if Caracteristica.where(:id => caracteristica_id).empty?
  end

  def obter_avaliacao
    comentario
  end
end
