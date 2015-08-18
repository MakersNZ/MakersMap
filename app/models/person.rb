require 'elasticsearch/model'

class Person < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  acts_as_geolocated
  
  # store_accessor :data, :name

  # has_many :tags, through: :relations, source: :tag, conditions: "relations.type = 'tag'"
  has_and_belongs_to_many :tags, join_table: :relations, class_name: Tag, foreign_key: :thing_id, association_foreign_key: :has_id
  has_and_belongs_to_many :friends, join_table: :relations, class_name: Person, foreign_key: :thing_id, association_foreign_key: :has_id
  

  # Things are related to other things
  has_many :relations, foreign_key: :thing_id
end
