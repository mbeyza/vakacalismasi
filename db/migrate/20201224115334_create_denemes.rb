class CreateDenemes < ActiveRecord::Migration[6.1]
  def change
    create_table :denemes do |t|
      t.string :AD
      t.string :SOYAD
      t.integer :YAS
      t.string :EMAİL
      t.text :ADRES
      

      t.timestamps
    end
  end
end
