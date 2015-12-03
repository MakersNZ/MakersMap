require 'elasticsearch/model'
require 'ostruct'

class Person < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  include Tagable
  include Geocodeable

  acts_as_geolocated

  # Things are related to other things
  has_many :relations, foreign_key: :thing_id

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

  def safe_data
    OpenStruct.new(data)
  end

  def name
    safe_data.name
  end
end
