class Article < ActiveRecord::Base
  mount_uploader :imagearticle, ImageNewsUploader
  attr_accessible :author, :content, :date, :description, :imagearticle, :title
end
