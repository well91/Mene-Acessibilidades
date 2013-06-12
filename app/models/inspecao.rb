class Inspecao < ActiveRecord::Base
  #STATUS DE INSPECAO
  APROVADA = 1
  REPROVADA = 2
  SUBMETIDA = 3
  REAGENDAMENTO_PENDENTE = 4
  REAGENDAMENTO_APROVADO = 5
  REAGENDAMENTO_REPROVADO = 6

  INSPECOES_STATUS = {
    APROVADA => "Aprovada",
    REPROVADA => "Reprovada",
    SUBMETIDA => "Submetida",
    REAGENDAMENTO_PENDENTE => "Reagendamento Pendente",
    REAGENDAMENTO_APROVADO => "Reagendamento Aprovado",
    REAGENDAMENTO_REPROVADO => "Reagendamento Reprovado"
  }

  belongs_to :inspetor
  belongs_to :objeto
  has_many :detalhes_inspecao, :class_name => 'DetalheInspecao'
  attr_accessible :data, :status, :foto, :detalhes_inspecao_attributes
  has_attached_file :foto
  accepts_nested_attributes_for :detalhes_inspecao


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

  def aprovar_inspecao
   self.status = APROVADA
  end

  def reprovar_inspecao
   self.status =  REPROVADA
  end

  def reagendar_inspecao
   self.status =  REAGENDADA
  end

  def marcar_como_pendente
   self.status = PENDENTE
  end

  def self.buscar_inspecoes_entre data_inicial, data_final
    Inspecao.where('data > ? and data < ?', data_inicial, data_final)
  end

  def self.buscar_inspecoes_de_funcionario id_funcionario
    Inspecao.where(:funcionario_id => id_funcionario)
  end

  def self.buscar_aprovadas
    Inspecao.where(:status => APROVADA)
  end

  def self.buscar_reprovadas
    Inspecao.where(:status => REPROVADA)
  end

  def self.buscar_reagendadas
    Inspecao.where(:status => REAGENDADA)
  end

  def self.buscar_pendentes
    Inspecao.where(:status => PENDENTE)
  end
end
