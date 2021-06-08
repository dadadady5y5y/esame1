class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :denominazione
      t.string :descrizione
      t.string :descrizione1
      t.string :luogo
      t.string :giorni
      t.integer :durata
      t.integer :numero

      t.timestamps
    end
  end
end
