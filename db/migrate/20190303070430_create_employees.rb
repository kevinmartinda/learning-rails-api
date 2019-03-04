class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :fullname
      t.string :position
      t.integer :empcode
      t.integer :mobile

      t.timestamps
    end
  end
end
