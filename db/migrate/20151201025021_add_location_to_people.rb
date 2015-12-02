class AddLocationToPeople < ActiveRecord::Migration
  def change
    change_table(:people) do |t|
      t.point :latlong
    end
  end
end
