class Survey < ActiveRecord::Base
  has_surveys
  attr_accessible :contests
  #... (your code) ...
end