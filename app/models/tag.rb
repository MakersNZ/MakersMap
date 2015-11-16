require 'elasticsearch/model'

class Tag < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
    
  has_and_belongs_to_many :people, join_table: :relations, class_name: Person, foreign_key: :thing_id, association_foreign_key: :has_id
  
  
end
