class Objeto < ActiveRecord::Base
  belongs_to :local
  attr_accessible :nome
end
