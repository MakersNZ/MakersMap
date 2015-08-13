class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :thing, index: true
      t.references :has, index: true
      
      t.string :type

      t.timestamps null: false
    end
  end
end
