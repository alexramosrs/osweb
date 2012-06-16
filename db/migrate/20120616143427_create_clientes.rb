class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome, :presence => true
      t.string :cpfcnpj
      t.string :fone
      t.string :email
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :cep
      t.text :obs

      t.timestamps
    end
  end
end
