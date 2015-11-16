#
# Stuff that is taggable should include this
#

module Tagable
  extend ActiveSupport::Concern

  included do
    has_and_belongs_to_many :tags,
                join_table: :relations,
                class_name: Tag,
                foreign_key: :thing_id,
                association_foreign_key: :has_id
  end

  def as_indexed_json(options={})
    as_json(include: { tags: { only: :name } } )
  end
end
