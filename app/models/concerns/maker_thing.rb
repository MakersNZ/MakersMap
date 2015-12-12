#
# 
#

module MakerThing
  require 'elasticsearch/model'
  require 'ostruct'

  extend ActiveSupport::Concern

  include Tagable
  include Geocodeable

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    acts_as_geolocated

    # Things are related to other things
    has_many :relations, foreign_key: :thing_id
  end

  def safe_data
    OpenStruct.new(data)
  end

  # Just the plaintext of the description
  def description_text
    # TODO
  end

  def description_html
    rc = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    rc.render(description)
  end
end
