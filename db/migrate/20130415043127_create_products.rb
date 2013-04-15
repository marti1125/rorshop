class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.integer :amount
      t.references :type

      t.timestamps
    end
    add_index :products, :type_id
  end
end
