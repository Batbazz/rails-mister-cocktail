class AddIconToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :icon, :text
  end
end
