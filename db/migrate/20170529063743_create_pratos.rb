class CreatePratos < ActiveRecord::Migration[5.1]
  def change
    create_table :pratos do |t|
      t.string :Prato
      t.float :preco
      t.timestamps
    end
  end
end
