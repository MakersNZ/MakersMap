class Place < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  include Tagable

  def self.data_fields
    [
      { name: :website,    type: :string },
      { name: :facebook,   type: :string },
      { name: :twitter,    type: :string }
    ]
  end

  def safe_data
    OpenStruct.new(data)
  end
end
