class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.boolean :gender
      t.string :country

      t.timestamps
    end
  end
end
