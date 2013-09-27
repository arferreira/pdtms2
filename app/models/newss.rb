class Newss < ActiveRecord::Base
  mount_uploader :imagenews, ImageNewsUploader
  attr_accessible :author, :content, :date, :description, :title, :imagenews
  
end
