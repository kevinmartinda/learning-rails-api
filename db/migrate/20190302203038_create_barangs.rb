class CreateBarangs < ActiveRecord::Migration[5.1]
  def change
    create_table :barangs do |t|
      t.string :name, limit: 32
      t.integer :stock

      t.timestamps
    end
  end
end
