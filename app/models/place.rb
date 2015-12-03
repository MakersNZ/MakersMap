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

  # Just the plaintext of the description
  def description_text
    # TODO
  end

  def description_html
    rc = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    rc.render(description)
  end
end
