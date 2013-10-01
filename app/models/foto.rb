class Foto < ActiveRecord::Base
  belongs_to :gallery
  attr_accessible :imagefoto, :gallery_id
  mount_uploader :imagefoto, ImageNewsUploader
end
