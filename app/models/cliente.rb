class Cliente < ActiveRecord::Base
  attr_accessible :cep, :cidade, :cpfcnpj, :email, :endereco, :fone, :nome, :obs, :uf
end
