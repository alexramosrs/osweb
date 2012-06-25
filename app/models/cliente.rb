class Cliente < ActiveRecord::Base
  attr_accessible :cep, :cidade, :cpfcnpj, :email, :endereco, :fone, :nome, :obs, :uf
  validates :nome, :presence => true
  has_many :servicos, :dependent => :destroy
end
