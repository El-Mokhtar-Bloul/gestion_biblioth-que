class CreateLivres < ActiveRecord::Migration[7.0]
  def change
    create_table :livres do |t|
      t.string :nom
      t.integer :nombre_de_page
      t.string :auteur

      t.timestamps
    end
  end
end
