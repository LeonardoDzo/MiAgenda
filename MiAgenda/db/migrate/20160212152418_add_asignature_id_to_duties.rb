class AddAsignatureIdToDuties < ActiveRecord::Migration
  def change
    add_reference :duties, :asignature, index: true
  end
end
