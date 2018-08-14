class CreateLugars < ActiveRecord::Migration[5.2]
  def change
    create_table :lugars do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
