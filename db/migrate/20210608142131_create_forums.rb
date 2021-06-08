class CreateForums < ActiveRecord::Migration[6.1]
  def change
    create_table :forums do |t|
      t.string :cognome
      t.string :nome
      t.string :indirizzo
      t.string :email
      t.integer :numero
      t.integer :annotazioni

      t.timestamps
    end
  end
end
