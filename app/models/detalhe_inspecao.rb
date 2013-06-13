class DetalheInspecao < ActiveRecord::Base
  belongs_to :caracteristica
  belongs_to :inspecao
  attr_accessible :aprovada, :comentario, :caracteristica_id

  validate :caracteristica_invalida


  def caracteristica_invalida
  	errors.add(:caracteristica_id, "Caracteristica inexistente") if Caracteristica.where(:id => caracteristica_id).empty?
  end

  def obter_avaliacao
    comentario
  end
end
