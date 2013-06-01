class Local < ActiveRecord::Base
  has_many :objetos
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }
end
