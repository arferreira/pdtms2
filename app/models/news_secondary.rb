class NewsSecondary < ActiveRecord::Base
  belongs_to :newscategory_id
  attr_accessible :author, :content, :date, :description, :title
end
