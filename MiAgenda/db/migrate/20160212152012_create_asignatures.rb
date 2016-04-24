class CreateAsignatures < ActiveRecord::Migration
  def change
    create_table :asignatures do |t|
      t.string :tittle
      t.integer :semester

      t.timestamps
    end
  end
end
