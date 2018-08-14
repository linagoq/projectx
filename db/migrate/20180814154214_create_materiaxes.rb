class CreateMateriaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :materiaxes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
