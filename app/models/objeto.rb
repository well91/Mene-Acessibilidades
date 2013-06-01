class Objeto < ActiveRecord::Base
  belongs_to :local
  belongs_to :categoria
  has_many :inspecoes
  attr_accessible :nome
end
