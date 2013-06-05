class Inspetor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :inspecoes
  attr_accessible :nome

  validates :nome, :presence => true, :length => { :minimum => 3 }

  def self.buscar_inspetor_por_id(id)
    Inspetor.where(:id => id).first
  end
end
