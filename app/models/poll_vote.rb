class PollVote < ActiveRecord::Base
  belongs_to :poll
  attr_accessible :vote, :poll_id
end
