require 'elasticsearch/model'
require 'ostruct'

class Person < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  include Tagable

  acts_as_geolocated

  # Things are related to other things
  has_many :relations, foreign_key: :thing_id

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
end
