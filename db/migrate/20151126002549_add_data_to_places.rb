class AddDataToPlaces < ActiveRecord::Migration
  def change
    change_table(:places) do |t|
      t.jsonb :data, null: false, default: '{}'
    end
  end
end
