class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.references :cliente
      t.date :data, :presence => true
      t.string :tipo, :presence => true
      t.string :contato
      t.text :descr
      t.text :laudo
      t.text :solucao
      t.string :situacao
      t.integer :numHoras
      t.float :valorHora
      t.float :valorTotal
      t.string :tecnico
      t.text :obs

      t.timestamps
    end
    add_index :servicos, :cliente_id
  end
end
