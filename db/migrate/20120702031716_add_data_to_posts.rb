class AddDataToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :data, :date
  end
end
