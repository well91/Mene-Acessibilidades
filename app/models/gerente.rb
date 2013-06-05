class Gerente < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }

  def self.buscar_gerente_por_id(id)
    Gerente.where(:id => id).first
  end
end
