class Servico < ActiveRecord::Base
  attr_accessible :contato, :data, :descr, :cliente_id, :laudo, :numHoras, :obs, :situacao, :solucao, :tecnico, :tipo, :valorHora, :valorTotal
  belongs_to :cliente
end
