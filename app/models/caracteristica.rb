#encoding: utf-8
class Caracteristica < ActiveRecord::Base
  belongs_to :categoria
  has_many :detalhes_inspecao
  attr_accessible :nome, :categoria

  validates :nome, :length => {:minimum => 3}

end
