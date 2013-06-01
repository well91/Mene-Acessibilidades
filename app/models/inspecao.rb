class Inspecao < ActiveRecord::Base
  belongs_to :inspetor
  belongs_to :objeto
  attr_accessible :data, :status
end
