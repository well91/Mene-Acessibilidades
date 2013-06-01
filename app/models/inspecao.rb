class Inspecao < ActiveRecord::Base
  belongs_to :inspetor
  belongs_to :objeto
  has_many :detalhes_inspecao
  attr_accessible :data, :status

  #STATUS DE INSPECAO
  APROVADA = 1
  REPROVADA = 2
  PENDENTE = 3
  REAGENDADA = 4

  INSPECOES_STATUS = {
  	APROVADA => "Aprovada",
  	REPROVADA => "Reprovada",
  	PENDENTE => "Pendente",
  	REAGENDADA => "Reagendada"
  }

  validate :inspetor_invalido
  validate :objeto_invalido
  validate :status_invalido

  def inspetor_invalido
  	errors.add(:inspetor_id, "Inspetor invalido") if Inspetor.where(:id => inspetor_id).empty?
  end

  def objeto_invalido
  	errors.add(:objeto_id, "Objeto Invalido") if Objeto.where(:id => objeto_id).empty?
  end

  def status_invalido
  	errors.add(:status, "Status invalido") unless INSPECOES_STATUS.has_key?(status)
  end
end
