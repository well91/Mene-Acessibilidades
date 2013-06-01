class Inspetor < ActiveRecord::Base
  has_many :inspecoes
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }
end
