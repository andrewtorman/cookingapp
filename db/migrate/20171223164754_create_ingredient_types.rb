class CreateIngredientTypes < ActiveRecord::Migration
  def change
    create_table :ingredient_types do |t|
      t.string :name
    end
  end
end
