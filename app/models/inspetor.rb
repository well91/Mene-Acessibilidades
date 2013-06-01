class Inspetor < ActiveRecord::Base
  has_many :inspecoes
  attr_accessible :nome
end
