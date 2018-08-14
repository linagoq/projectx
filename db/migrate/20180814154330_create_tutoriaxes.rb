class CreateTutoriaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :tutoriaxes do |t|
      t.string :nombre
      t.string :modalidad
      t.string :descripcion
      t.references :estudiante, foreign_key: true
      t.references :profesor, foreign_key: true
      t.references :materiax, foreign_key: true
      t.references :lugar, foreign_key: true

      t.timestamps
    end
  end
end
