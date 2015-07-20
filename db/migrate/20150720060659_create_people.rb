class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.jsonb :data, null: false, default: '{}'
      t.timestamps null: false
    end
  end
end
