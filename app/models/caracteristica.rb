class Caracteristica < ActiveRecord::Base
  belongs_to :categoria
  has_many :detalhes_inspecao
  attr_accessible :nome
end
