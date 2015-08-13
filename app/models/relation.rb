class Relation < ActiveRecord::Base
  belongs_to :thing
  belongs_to :has
end
