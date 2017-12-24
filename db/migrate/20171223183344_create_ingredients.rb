class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :ingredient_type_id
      t.integer :quantity, default: 0
      t.datetime :expiration_date

      t.timestamps
    end

    add_index :ingredients, [:ingredient_type_id, :quantity]
  end
end
