class AddLocationToEvent < ActiveRecord::Migration
  def change
    change_table(:events) do |t|
      t.point :latlong
    end
  end
end
