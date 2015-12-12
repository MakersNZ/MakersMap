class Person < ActiveRecord::Base
  include MakerThing

  has_and_belongs_to_many :friends,
              join_table: :relations,
              class_name: Person,
              foreign_key: :thing_id,
              association_foreign_key: :has_id


  def self.data_fields
    [
      { name: :name,    type: :string },
      { name: :bio,     type: :text },
      { name: :address, type: :text },
      { name: :phone_number, type: :string }
    ]
  end

  def name
    safe_data.name
  end
end
