class Article < ActiveRecord::Base
  attr_accessible :author, :content, :date, :description, :imagearticle, :title
end
