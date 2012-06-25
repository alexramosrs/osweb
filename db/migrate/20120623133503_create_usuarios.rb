class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login, :null => false
      t.string :senha, :null => false
      t.string :nome, :null => false

      t.timestamps
    end
  end
end
