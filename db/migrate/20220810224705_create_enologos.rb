class CreateEnologos < ActiveRecord::Migration[6.1]
  def change
    create_table :enologos do |t|
      t.string :nombre
      t.integer :edad
      t.string :nacionalidad

      t.timestamps
    end
  end
end
