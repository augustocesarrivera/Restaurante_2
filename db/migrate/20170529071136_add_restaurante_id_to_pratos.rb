class AddRestauranteIdToPratos < ActiveRecord::Migration[5.1]
  def change
    add_column :pratos, :restaurante_id, :integer
  end
end
