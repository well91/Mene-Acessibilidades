class Caracteristica < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :nome
end
