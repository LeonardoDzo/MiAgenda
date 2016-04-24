class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.references :user, index: true
      t.string :tittle
      t.text :body
      t.date :date_of_delivery
      t.integer :priority
      t.timestamps
    end
  end
end