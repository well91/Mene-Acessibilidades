class DetalheInspecao < ActiveRecord::Base
  belongs_to :caracteristica
  belongs_to :inspecao
  attr_accessible :aprovada
end
