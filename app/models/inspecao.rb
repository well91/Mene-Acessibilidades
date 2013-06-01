class Inspecao < ActiveRecord::Base
  belongs_to :inspetor
  belongs_to :objeto
  has_many :detalhes_inspecao
  attr_accessible :data, :status
end
