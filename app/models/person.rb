require 'elasticsearch/model'
require 'ostruct'

class Person < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  include Tagable

  acts_as_geolocated

  # Things are related to other things
  has_many :relations, foreign_key: :thing_id

  def safe_data
    OpenStruct.new(data)
  end
end
