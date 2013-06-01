class Categoria < ActiveRecord::Base
  has_many :caracteristicas
  has_many :objetos
  attr_accessible :nome
end
