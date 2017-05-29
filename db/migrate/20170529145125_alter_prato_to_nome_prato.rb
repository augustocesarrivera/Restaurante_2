class AlterPratoToNomePrato < ActiveRecord::Migration[5.1]
  def change
  	rename_column :pratos, :Prato, :nome_prato
  end
end
