class Gerente < ActiveRecord::Base
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }

  def self.buscar_gerente_por_id(id)
    Gerente.where(:id => id).first
  end
end
