class Gerente < ActiveRecord::Base
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }
end
