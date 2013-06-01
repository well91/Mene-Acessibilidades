class Local < ActiveRecord::Base
  has_many :objetos
  attr_accessible :nome
end
