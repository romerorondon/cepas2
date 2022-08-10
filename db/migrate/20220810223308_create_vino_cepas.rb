class CreateVinoCepas < ActiveRecord::Migration[6.1]
  def change
    create_table :vino_cepas do |t|
      t.references :cepa, foreign_key: true
      t.references :vino, foreign_key: true
      
      t.timestamps
    end
  end
end
