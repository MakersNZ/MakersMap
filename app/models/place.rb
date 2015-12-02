class Place < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  include Tagable
  include Geocodeable

  def self.data_fields
    [
      { name: :website,    type: :string },
      { name: :facebook,   type: :string },
      { name: :twitter,    type: :string },
      { name: :address,    type: :text }
    ]
  end

  def safe_data
    OpenStruct.new(data)
  end
end
