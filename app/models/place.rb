class Place < ActiveRecord::Base
  #validates :latitude, :numericality => true
  #validates :longitude, :numericality => true

  belongs_to :author
  
  before_save :set_latlng
  
  def set_latlng
    self.latitude, self.longitude = Geomap.geocode(self.location)
  end
  
end
