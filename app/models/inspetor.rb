class Inspetor < ActiveRecord::Base
  has_many :inspecoes
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }

  def self.buscar_inspetor_por_id(id)
    Inspetor.where(:id => id).first
  end
end
