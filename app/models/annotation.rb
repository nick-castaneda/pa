class Annotation < ActiveRecord::Base

  belongs_to :user
  belongs_to :transcript

#  validates :user_id, presence: true
#  validates :transcript_id, presence: true
  validates :user_id, presence: true
  validates :transcript_id, presence: true
  validates :start, presence: true
  validates :end, presence: true

end
