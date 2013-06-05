class Categoria < ActiveRecord::Base
  has_many :caracteristicas
  has_many :objetos
  attr_accessible :nome, :caracteristicas_attributes

  accepts_nested_attributes_for :caracteristicas, :reject_if => lambda { |a| a[:nome].blank? }, :allow_destroy => true

  validates :nome, :presence => true, :length => {:minimum => 3}
end
