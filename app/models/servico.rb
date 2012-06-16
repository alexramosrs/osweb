class Servico < ActiveRecord::Base
  attr_accessible :contato, :data, :descr, :id_cliente, :laudo, :numHoras, :obs, :situacao, :solucao, :tecnico, :tipo, :valorHora, :valorTotal
end
