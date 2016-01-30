#
# Stuff that is taggable should include this
#

module Geocodeable
  extend ActiveSupport::Concern

  included do
    geocoded_by :address do |obj,results|
      if geo = results.first
        obj.latlong = [geo.latitude, geo.longitude]
      end
    end
    after_validation :geocode#, if: ->(obj){ obj.safe_data.address.present? and obj.safe_data.address_changed? }

  end

  def address
    safe_data.address
  end

end
